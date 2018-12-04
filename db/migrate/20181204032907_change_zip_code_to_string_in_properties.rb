class ChangeZipCodeToStringInProperties < ActiveRecord::Migration[5.2]
  def change
    remove_column :properties, :postal_code, :integer
    add_column :properties, :postal_code, :string
  end
end
