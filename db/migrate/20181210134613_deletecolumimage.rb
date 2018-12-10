class Deletecolumimage < ActiveRecord::Migration[5.2]
  def change
    remove_column :properties, :image, :string
    add_column :properties, :images, :string
  end
end
