class CreateRecordings < ActiveRecord::Migration
  def change
    create_table :recordings do |t|
      t.references :song
      t.string :name
      t.datetime :date_recorded

      t.timestamps
    end
    add_index :recordings, :song_id
  end
end
