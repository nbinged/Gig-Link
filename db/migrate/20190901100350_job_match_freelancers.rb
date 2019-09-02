class JobMatchFreelancers < ActiveRecord::Migration[5.2]
  def change
    create_table :job_match_freelancers do |t|
      t.references :job_match
      t.references :freelancer
      t.float :gross_amount
      t.float :service_fee
      t.float :net_amount
    end
  end
end