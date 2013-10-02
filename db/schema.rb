# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130908045348) do

  create_table "albums", :force => true do |t|
    t.string   "title"
    t.datetime "date_recorded"
    t.string   "image_path"
    t.text     "description"
    t.string   "bandcamp_name"
    t.integer  "bandcamp_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "song_albums", :force => true do |t|
    t.integer  "album_id"
    t.integer  "song_id"
    t.integer  "track_number"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "song_albums", ["album_id"], :name => "index_song_albums_on_album_id"
  add_index "song_albums", ["song_id"], :name => "index_song_albums_on_song_id"

  create_table "songs", :force => true do |t|
    t.string   "name"
    t.text     "lyrics"
    t.text     "chords"
    t.datetime "date_written"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
