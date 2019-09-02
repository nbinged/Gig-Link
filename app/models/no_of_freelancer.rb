class NoOfFreelancer < ActiveRecord::Base
    has_many :job_posting
end