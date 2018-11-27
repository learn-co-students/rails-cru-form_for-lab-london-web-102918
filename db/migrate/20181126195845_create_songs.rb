class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.references :artist_id, index: true, foreign_key: true
      t.references :genre_id, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
