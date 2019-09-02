class Freelancers < ActiveRecord::Migration[5.2]
  def change
    create_table :freelancers do |t|
      t.string :professional_title
      t.string :professional_overview
      t.date :start_work_date
      t.references :job_category
      t.references :experience_level_hourly_rate
      t.references :payment_type
      t.references :country
	    t.string :email
	    t.string :encrypted_password
	    t.string :reset_password_token
	    t.date :reset_password_sent_at
	    t.date :remember_created_at
	    t.float :hourly_rate
	    t.string :first_name
	    t.string :last_name
	    t.string :country
	    t.string :highest_education
    end
  end
end