class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.text :additional_content, optional: true
      t.integer :street_number
      t.string :route
      t.string :locality
      t.string :administrative_area_level_1
      t.string :country
      t.integer :postal_code
      t.references :user, index: true
      t.timestamps
    end
  end
end
