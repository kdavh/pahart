class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.datetime :date_recorded
      t.string :image_path
      t.text :description
      t.integer :bandcamp_id

      t.timestamps
    end
  end
end
