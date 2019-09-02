class PaymentType < ActiveRecord::Base
    belongs_to :freelancer, optional: true
    has_many :job_posting
end