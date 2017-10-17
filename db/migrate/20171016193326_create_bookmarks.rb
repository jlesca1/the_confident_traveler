class CreateBookmarks < ActiveRecord::Migration[5.1]
  def change
    create_table :bookmarks do |t|
      t.string :name, null: false
      t.string :location_type
      t.string :personal_rating
      t.string :notes
      t.belongs_to :user, index: true
      t.belongs_to :location, index: true

      t.timestamps
    end
  end
end
