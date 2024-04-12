class AddDetailsToProducts < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :brand, :string
    add_column :products, :category, :string
    add_column :products, :labourTime, :integer
  end
end
