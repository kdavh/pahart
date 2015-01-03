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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20130908045348) do

  create_table "albums", force: :cascade do |t|
    t.string   "title"
    t.datetime "date_recorded"
    t.string   "image_path"
    t.text     "description"
    t.string   "bandcamp_name"
    t.string   "bandcamp_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "song_albums", force: :cascade do |t|
    t.integer  "album_id"
    t.integer  "song_id"
    t.integer  "track_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "song_albums", ["album_id"], name: "index_song_albums_on_album_id"
  add_index "song_albums", ["song_id"], name: "index_song_albums_on_song_id"

  create_table "songs", force: :cascade do |t|
    t.string   "name"
    t.text     "lyrics"
    t.string   "capo_instructions"
    t.datetime "date_written"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
