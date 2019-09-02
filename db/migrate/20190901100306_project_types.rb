class ProjectTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :project_types do |t|
      t.string :name
    end
  end
end