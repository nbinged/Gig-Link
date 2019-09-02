class ExpertiseDetail < ActiveRecord::Base
    belongs_to :expertise, optional: true
end