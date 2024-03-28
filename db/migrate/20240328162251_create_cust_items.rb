class CreateCustItems < ActiveRecord::Migration[7.1]
  def change
    create_table :cust_items do |t|
      t.string :make
      t.string :model
      t.string :color
      t.string :size
      t.belongs_to :customer

      t.timestamps
    end
  end
end
