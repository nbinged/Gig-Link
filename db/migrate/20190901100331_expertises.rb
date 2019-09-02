class Expertises < ActiveRecord::Migration[5.2]
  def change
    create_table :expertises do |t|
      t.string :name
    end
  end
end