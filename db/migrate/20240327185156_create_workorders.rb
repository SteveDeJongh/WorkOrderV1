class CreateWorkorders < ActiveRecord::Migration[7.1]
  def change
    create_table :workorders do |t|
      t.string :customer
      t.string :item
      t.string :status

      t.timestamps
    end
  end
end
