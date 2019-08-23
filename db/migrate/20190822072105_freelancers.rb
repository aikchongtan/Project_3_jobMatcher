class Freelancers < ActiveRecord::Migration[5.2]
  def change
    create_table :freelancers do |t|
      t.string :professional_title
      t.string :professional_overview
      t.date :start_work_date
      t.references :job_category
      t.references :experience_level_hourly_rate
      t.references :payment_type
      t.references :country
    end
  end
end