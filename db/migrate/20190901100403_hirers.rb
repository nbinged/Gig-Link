class Hirers < ActiveRecord::Migration[5.2]
  def change
    create_table :hirers do |t|
      t.string :email
	    t.string :encrypted_password
	    t.string :reset_password_token
	    t.date :reset_password_sent_at
      t.date :remember_created_at
      t.date :created_at
      t.date :updated_at
      t.string :first_name
      t.string :last_name
      t.string :country
    end
  end
end