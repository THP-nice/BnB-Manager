class AddAreaAndSleepsAndRoomsToProperties < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :area, :integer
    add_column :properties, :sleeps, :integer
    add_column :properties, :rooms, :integer
  end
end
