class AddCustomerDetailsToWorkorders < ActiveRecord::Migration[7.1]
  def change
    add_column :workorders, :customerName, :string
    add_column :workorders, :itemDesc, :string
  end
end
