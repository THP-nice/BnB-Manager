class AddColumnIbanToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :iban, :string
  end
end
