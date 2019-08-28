class SaveJobBucket < ActiveRecord::Migration[5.2]
  def change
    create_table :save_job_bucket do |t|
      t.references :freelancer
	  t.references :job_posting
    end
  end
end