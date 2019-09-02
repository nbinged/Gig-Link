class JobMatch < ActiveRecord::Base
    belongs_to :freelancer, optional: true
    belongs_to :hirer, optional: true
    belongs_to :job_posting, optional: true

end