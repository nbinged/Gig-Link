class NoOfFreelancers < ActiveRecord::Migration[5.2]
  def change
    create_table :no_of_freelancers do |t|
      t.string :name
    end
  end
end