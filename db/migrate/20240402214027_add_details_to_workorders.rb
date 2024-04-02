class AddDetailsToWorkorders < ActiveRecord::Migration[7.1]
  def change
    add_column :workorders, :customer_id, :integer
    add_column :workorders, :cust_item_id, :integer
  end
end
