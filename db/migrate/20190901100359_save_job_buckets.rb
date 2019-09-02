class SaveJobBuckets < ActiveRecord::Migration[5.2]
  def change
    create_table :save_job_buckets do |t|
      t.references :freelancer
	  t.references :job_posting
    end
  end
end