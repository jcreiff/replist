class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.integer :artist_id
      t.integer :instrument_id
      t.string :key
      t.string :high_note
      t.text :lyrics
      t.boolean :memorized
      t.date :performed_on
      t.text :notes

      t.timestamps null: false
    end
  end
end
