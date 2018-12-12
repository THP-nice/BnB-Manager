class ChangeStreetNumberToStringToProperties < ActiveRecord::Migration[5.2]
  def change
    remove_column :properties, :street_number, :integer
    add_column :properties, :street_number, :string
  end
end
