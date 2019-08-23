class SaveMyHires < ActiveRecord::Migration[5.2]
  def change
    create_table :save_my_hires do |t|
      t.references :job_posting
      t.references :freelancer
    end
  end
end