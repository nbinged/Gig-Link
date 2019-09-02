class JobPostingExpertises < ActiveRecord::Migration[5.2]
  def change
    create_table :job_posting_expertises do |t|
      t.references :expertise_detail
      t.references :job_posting
    end
  end
end