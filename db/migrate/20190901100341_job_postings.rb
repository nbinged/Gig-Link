class JobPostings < ActiveRecord::Migration[5.2]
  def change
    create_table :job_postings  do |t|
      t.string :job_post_title
      t.string :job_description
      t.date :project_start_date
      t.references :post_visibility
      t.references :payment_type
      t.references :project_timeline
      t.references :project_type      
      t.references :job_category
      t.references :no_of_freelancer
      t.references :experience_level_hourly_rate
	    t.references :hirer
	    t.float :fixed_price
    end
  end
end