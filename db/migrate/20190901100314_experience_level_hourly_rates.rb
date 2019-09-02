class ExperienceLevelHourlyRates < ActiveRecord::Migration[5.2]
  def change
    create_table :experience_level_hourly_rates do |t|
      t.string :name
      t.integer :hourly_rates
    end
  end
end
