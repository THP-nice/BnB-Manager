class AddFullAddressToProperties < ActiveRecord::Migration[5.2]
  def change
    remove_column :properties, :full_adress, :text
    add_column :properties, :full_address, :text
  end
end
