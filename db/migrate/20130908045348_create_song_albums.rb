class CreateSongAlbums < ActiveRecord::Migration
  def change
    create_table :song_albums do |t|
      t.references  :album
      t.references  :song
      t.integer     :track_number

      t.timestamps
    end
    add_index :song_albums, :album_id
    add_index :song_albums, :song_id
  end
end
