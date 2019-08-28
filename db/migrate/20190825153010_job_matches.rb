class JobMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :job_matches do |t|
      t.references :job_posting
      t.string  :requester_type
      t.integer :approval_status
	  t.integer :freelancer_id
	  t.integer :hirer_id
	  t.float :gross_amount
	  t.float :service_fee
	  t.float :net_amount
    end
  end
end