class RemoveCustomerFromWorkorders < ActiveRecord::Migration[7.1]
  def change
    remove_column :workorders, :customer, :string
    remove_column :workorders, :item, :string
  end
end
