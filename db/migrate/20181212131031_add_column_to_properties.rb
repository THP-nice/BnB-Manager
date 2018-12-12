class AddColumnToProperties < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :status, :boolean, default: false
  end
end
