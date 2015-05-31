class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.integer :band_id
      t.integer :user_id

      t.timestamps null: false
    end
    add_index :songs, :band_id
    add_index :songs, :user_id
  end
end
