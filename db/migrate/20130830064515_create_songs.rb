class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string    :name
      t.text      :lyrics
      t.string    :capo_instructions
      t.datetime  :date_written

      t.timestamps
    end
  end
end
