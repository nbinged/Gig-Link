class ExperienceLevelHourlyRate < ActiveRecord::Base
    has_many :freelancer
    has_many :job_posting
end