# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
require 'seeds_helper'
require 'seeds_production_data'
include SeedsHelper

ActiveRecord::Base.transaction do
  songs = []
  albums = []

  2.times do |n|
    albums << Album.create!(
      title: ALBUM_NAMES[n],
      date_recorded: ALBUM_DATES[n],
      image_path: "album_#{n}",
      bandcamp_name: ALBUM_BANDCAMP_NAMES[n],
      bandcamp_id: ALBUM_BANDCAMP_NUMBERS[n]
    )
  end

  parse_production_lyrics
end
