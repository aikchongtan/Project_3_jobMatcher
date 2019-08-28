class SaveFreelanerCandidate < ActiveRecord::Migration[5.2]
  def change
    create_table :save_freelancer_candidate do |t|
      t.references :freelancer
	  t.references :hirer
    end
  end
end