class ProjectType < ActiveRecord::Base
    has_many :job_posting
end