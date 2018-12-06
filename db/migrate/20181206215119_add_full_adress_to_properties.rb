class AddFullAdressToProperties < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :full_adress, :text
  end
end
