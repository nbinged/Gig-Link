class Hirer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
         has_many :job_match
         has_many :job_posting
         belongs_to :save_freelancer_candidate, optional: true
end
