class PostVisibilities < ActiveRecord::Migration[5.2]
  def change
    create_table :post_visibilities do |t|
      t.string :name
    end
  end
end
