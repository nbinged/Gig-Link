class Freelancer < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  has_many :job_match
  belongs_to :experience_level_hourly_rate, optional: true
  belongs_to :job_category, optional: true
  has_and_belongs_to_many  :save_freelancer_buckets, optional: true

end