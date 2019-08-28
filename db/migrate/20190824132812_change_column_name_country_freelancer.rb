class ChangeColumnNameCountryFreelancer < ActiveRecord::Migration[5.0]
  def change
    rename_column :freelancers, :country_select, :country
  end
end
