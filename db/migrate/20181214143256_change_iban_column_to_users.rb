class ChangeIbanColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :iban, :string
    add_column :users, :iban, :string, optional: true
  end
end
