class SaveMyJobpostings < ActiveRecord::Migration[5.2]
  def change
    create_table :save_my_jobpostings do |t|
      t.references :freelancer
      t.references :job_posting
    end
  end
end