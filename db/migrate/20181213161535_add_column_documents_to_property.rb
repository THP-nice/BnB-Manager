class AddColumnDocumentsToProperty < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :documents, :string
  end
end
