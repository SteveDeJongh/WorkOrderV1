class AddDescriptionToServices < ActiveRecord::Migration[7.1]
  def change
    add_column :services, :desc, :text
  end
end
