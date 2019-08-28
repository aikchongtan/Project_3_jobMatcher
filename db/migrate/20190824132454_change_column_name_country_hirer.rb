class ChangeColumnNameCountryHirer < ActiveRecord::Migration[5.0]
  def change
    rename_column :hirers, :country_select, :country
  end
end
