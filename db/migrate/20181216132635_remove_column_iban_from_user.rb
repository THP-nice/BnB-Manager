class RemoveColumnIbanFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :iban, :string
  end
end
