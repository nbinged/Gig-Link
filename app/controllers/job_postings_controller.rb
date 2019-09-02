class JobPostingsController < ApplicationController

        def index
                @job_posting = JobPosting.all
        end

        def list
                @job_posting = JobPosting.all  
        end
      
        def saved_jobs
                @job_posting = JobPosting.joins("INNER JOIN save_job_buckets ON save_job_buckets.job_posting_id = job_postings.id").where(["save_job_buckets.freelancer_id = ?" , current_freelancer.id])
        end 

        def show
                @job_posting = JobPosting.find(params[:id])
        end

        def new
                @job_categories = JobCategory.all
                @project_types = ProjectType.all
                @post_visibilities = PostVisibility.all
                @no_of_freelancers = NoOfFreelancer.all
                @expertises =  Expertise.all
                @expertise_details = ExpertiseDetail.all
                @payment_types = PaymentType.all
                @project_timelines = ProjectTimeline.all
                @experience_level_hourly_rates = ExperienceLevelHourlyRate.all
      
        end
      
        def create
              #Create a new job posting.
              # @job_posting = JobPosting.find_by(current_user.id)
                print "save posting"
                  @job_posting = JobPosting.new(job_posting_params)
      
                  @job_posting.hirer_id = current_hirer.id
                  @job_posting.save
                  # render plain: params[:job].inspect
   
                  #redirect_to @job_posting
                  redirect_to job_postings_path
      
        end
      
        def edit
      
                  if !@job_posting.nil?
                  @job_posting.update(job_posting_params)
      
                  else
                  @job_posting = JobPosting.find(params[:id])
                  @job_categories = JobCategory.all
                  @project_types = ProjectType.all
                  @post_visibilities = PostVisibility.all
                  @no_of_freelancers = NoOfFreelancer.all
                  @expertises =  Expertise.all
                  @expertise_details = ExpertiseDetail.all
                  @payment_types = PaymentType.all
                  @project_timelines = ProjectTimeline.all
                  @experience_level_hourly_rates = ExperienceLevelHourlyRate.all
      
              end
      
        end
      
        def update
      
                @job_posting = JobPosting.find(params[:id])
                @job_posting.update(job_posting_params)
                redirect_to jobs_path(@jobs)
      
        end
      
        def destroy
        
                @job_posting = JobPosting.find(params[:id])
                @job_posting.destroy
        
                redirect_to jobs_path(@jobs)
        end
      
        private
        def job_posting_params
            params.require(:job_posting).permit(
                :job_post_title, :job_category_id,:job_description, 
                :project_type_id, :post_visibility_id, :no_of_freelancer_id, 
                :payment_type_id, :project_timeline_id,
                :hirer_id,:fixed_price, :project_start_date, :experience_level_hourly_rate_id  )
            end
      
      end