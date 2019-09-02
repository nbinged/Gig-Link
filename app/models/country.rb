class Country < ActiveRecord::Base
    has_many :job_posting
    belongs_to :freelancer, optional: true
end