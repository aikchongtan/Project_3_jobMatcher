class SaveFreelanerCandidate1 < ActiveRecord::Migration[5.2]
  def change
    create_table :save_freelancer_candidates do |t|
      t.references :freelancer
	  t.references :hirer
    end
  end
end