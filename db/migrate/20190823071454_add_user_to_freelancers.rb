class AddUserToFreelancers < ActiveRecord::Migration[5.2]
  def change
    add_reference :freelancers, :user, foreign_key: true
  end
end
