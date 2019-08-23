class AddUserIdToJobPostings < ActiveRecord::Migration[5.2]
  def change
    add_column :job_postings, :user_id, :bigint
  end
end
