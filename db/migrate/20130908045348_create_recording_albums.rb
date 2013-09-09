class CreateRecordingAlbums < ActiveRecord::Migration
  def change
    create_table :recording_albums do |t|
      t.references :album
      t.references :recording
      t.integer :track_number

      t.timestamps
    end
    add_index :recording_albums, :album_id
    add_index :recording_albums, :recording_id
  end
end
