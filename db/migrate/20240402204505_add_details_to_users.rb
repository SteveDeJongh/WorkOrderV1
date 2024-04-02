class AddDetailsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :position, :string
    add_column :users, :permissions, :string
  end
end
