class FreelancerExpertises < ActiveRecord::Migration[5.2]
  def change
    create_table :freelancer_expertises do |t|
      t.references :expertise_detail
      t.references :freelancer
    end
  end
end