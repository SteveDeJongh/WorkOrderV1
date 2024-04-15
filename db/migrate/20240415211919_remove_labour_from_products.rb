class RemoveLabourFromProducts < ActiveRecord::Migration[7.1]
  def change
    remove_column :products, :labour
    remove_column :products, :labourTime
    remove_column :products, :taxable
  end
end
