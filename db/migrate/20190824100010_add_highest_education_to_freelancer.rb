class AddHighestEducationToFreelancer < ActiveRecord::Migration[5.2]
  def change
       add_column :freelancers, :highest_education, :string
  end
end