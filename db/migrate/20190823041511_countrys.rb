class Countrys < ActiveRecord::Migration[5.2]
  def change
    create_table :countrys do |t|
      t.string :name
    end
  end
end