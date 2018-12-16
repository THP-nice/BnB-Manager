class CreateIbans < ActiveRecord::Migration[5.2]
  def change
    create_table :ibans do |t|
      t.string :account
      t.references :user, index: true
      t.timestamps
    end
  end
end
