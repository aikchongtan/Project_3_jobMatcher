 class AddFixedPriceToJobPosting < ActiveRecord::Migration[5.2]
        def change
            add_column :job_postings, :fixed_price, :float
        end
    end