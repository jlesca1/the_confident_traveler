class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :city
      t.string :state_reigion
      t.string :country
      t.string :zip_code, null: false

      t.timestamps
    end
  end
end
