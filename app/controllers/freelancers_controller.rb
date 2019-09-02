class FreelancersController < ApplicationController

  def index
      @freelancers = Freelancer.all
  end 

  def saved_candidates
      @freelancers = Freelancer.joins("INNER JOIN save_freelancer_buckets ON save_freelancer_buckets.freelancer_id = freelancers.id").where(["save_freelancer_buckets.hirer_id = ?" , current_hirer.id])
  end 

  def register
        @freelancer = Freelancer.find(current_freelancer.id)
        if @freelancer.professional_title.nil? || @freelancer.professional_title.empty?
          redirect_to register_profile_path
        else
          redirect_to job_postings_list_path
        end
  end

  def show
        @freelancer = Freelancer.find(params[:id])
        @category = JobCategory.find(@freelancer.job_category_id)
        @experience = ExperienceLevelHourlyRate.find(@freelancer.experience_level_hourly_rate_id)
        @payment = PaymentType.find(@freelancer.payment_type_id)
        @firstname = @freelancer.first_name
        @lastname = @freelancer.last_name
        @country = @freelancer.country
    end


    def register_profile
          @freelancer = Freelancer.find(current_freelancer.id)
          @countries = Country.all
    end
  
    def create_profile
          save_profile()
          redirect_to register_expertise_path
    end 

    def register_expertise
          @freelancer = Freelancer.find(current_freelancer.id)
          @job_categories = JobCategory.all
          @experience_levels = ExperienceLevelHourlyRate.all
          @payment_types = PaymentType.all

          @expertise_details = ExpertiseDetail.all
    end

    def create_expertise
          save_profile()
          redirect_to register_budget_path
    end 

    def register_budget
          @freelancer = Freelancer.find(current_freelancer.id)
    end
  
    def create_budget
          save_profile()
          redirect_to job_postings_list_path
    end 
  
    def save_profile
          @freelancer = Freelancer.find(current_freelancer.id)
          if !@freelancer.nil? 
              @freelancer.update(freelancer_params)
          else 
              @freelancer = Freelancer.new(freelancer_params)
              @freelancer.save
          end
    end
    
    def edit
      @freelancer.update(freelancer_params)
      @job_categories = JobCategory.all
      @experience_levels = ExperienceLevelHourlyRate.all
      @payment_types = PaymentType.all

      @expertise_details = ExpertiseDetail.all
    end 
    
    def create
     
    end
  
    def update
    end
  
    def destroy
    end
  
  end
  
  private
    def freelancer_params
      params.require(:freelancer).permit(
        :professional_title, :professional_overview, :start_work_date,:highest_education,
        :job_category_id, :experience_level_hourly_rate_id,:payment_type_id, :country_id,
        :hourly_rate, :country_select )
    end

