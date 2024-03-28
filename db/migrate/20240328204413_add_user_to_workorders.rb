class AddUserToWorkorders < ActiveRecord::Migration[7.1]
  def change
    add_reference :workorders, :user, null: false, foreign_key: true
  end
end
