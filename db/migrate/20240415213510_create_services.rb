class CreateServices < ActiveRecord::Migration[7.1]
  def change
    create_table :services do |t|
      t.string :name
      t.string :sku
      t.float :price
      t.integer :duration

      t.timestamps
    end
  end
end
