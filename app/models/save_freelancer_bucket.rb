class SaveFreelancerBucket < ActiveRecord::Base
    has_and_belongs_to_many  :freelancers
end