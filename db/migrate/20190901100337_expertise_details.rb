class ExpertiseDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :expertise_details do |t|
      t.string :name
      t.references :expertise
    end
  end
end