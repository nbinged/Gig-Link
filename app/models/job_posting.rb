class JobPosting  < ActiveRecord::Base
    belongs_to :post_visibility, optional: true
    belongs_to :payment_type, optional: true
    belongs_to :project_timeline, optional: true
    belongs_to :project_type, optional: true
    belongs_to :job_category, optional: true
    belongs_to :no_of_freelancer, optional: true
    belongs_to :experience_level_hourly_rate, optional: true
    #belongs_to :user
    belongs_to :hirer, optional: true
    has_many :job_match
end