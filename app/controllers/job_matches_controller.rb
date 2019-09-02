class JobMatchesController < ApplicationController
    
  def propose_job
        @job_posting = JobPosting.find(params[:job_posting_id])
        @freelancer = Freelancer.find(current_freelancer.id)
        
        @gross_value = 0
        if (@job_posting.payment_type_id == 2)
          @gross_value = @job_posting.fixed_price
        else
          @gross_value = @freelancer.hourly_rate
        end

        @job_match = JobMatch.new
        @job_match.job_posting_id = @job_posting.id
        @job_match.requester_type = 'F'
        @job_match.approval_status = 0
        @job_match.freelancer_id = @freelancer.id  
        @job_match.gross_amount = @gross_value
        @job_match.service_fee = @job_match.gross_amount.to_f * 0.20
        @job_match.net_amount = @job_match.gross_amount.to_f - @job_match.service_fee.to_f
        @job_match.hirer_id = @job_posting.hirer_id
        @job_match.save
        
        redirect_to job_matches_path
  end 

  def save_job
        if (freelancer_signed_in?)
            @job_bucket = SaveJobBucket.new
            @job_bucket.freelancer_id = current_freelancer.id
            @job_bucket.job_posting_id = params[:job_id]
            @job_bucket.save
            redirect_to job_postings_path
        end
        if (hirer_signed_in?)
            @freelancer_candidate = SaveFreelancerBucket.new
            @freelancer_candidate.freelancer_id = params[:freelancer_id]
            @freelancer_candidate.hirer_id = current_hirer.id
            @freelancer_candidate.save
            redirect_to freelancers_path
        end
        
  end 
  
  def index
        if freelancer_signed_in?
          @job_matches = JobMatch.where(freelancer_id: current_freelancer.id).order(:id)
        end 
        if hirer_signed_in?
          @job_matches = JobMatch.where(hirer_id: current_hirer.id).order(:id)
        end
  end

  def status_update
        @job_match = JobMatch.find(params[:id])
        @job_match.update(job_match_status_param)
        redirect_to job_matches_path
  end
end   
private
    def job_match_status_param
            params.permit(
              :approval_status)
    end

