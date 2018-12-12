class AddColumnToProperties < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :status, :boolean, default: false
  end
end
