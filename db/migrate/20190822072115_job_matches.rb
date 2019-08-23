class JobMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :job_matches do |t|
      t.references :job_posting
      t.string  :requester_type
      t.integer :approval_status
    end
  end
end