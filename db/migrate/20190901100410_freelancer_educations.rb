class FreelancerEducations < ActiveRecord::Migration[5.2]
  def change
    create_table :freelancer_educations do |t|
      t.references :freelancer
      t.string :tietiary
    end
  end
end