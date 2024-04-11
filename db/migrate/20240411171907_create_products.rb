class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :sku
      t.integer :upc
      t.float :price
      t.float :cost
      t.integer :stock
      t.integer :min
      t.integer :max
      t.boolean :inventory
      t.boolean :taxable
      t.boolean :labour
      t.string :image
      t.float :weight
      t.float :height
      t.float :length
      t.float :width

      t.timestamps
    end
  end
end
