class CreateSongGenres < ActiveRecord::Migration
  def change
    create_table :song_genres do |t|
      t.integer :song_id
      t.integer :genre_id
      t.integer :user_id

      t.timestamps null: false
    end
    add_index :song_genres, :song_id
    add_index :song_genres, :genre_id
    add_index :song_genres, :user_id
    add_index :song_genres, [:song_id, :genre_id], unique: true
  end
end
