# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
require 'faker'
include SeedsHelper

ActiveRecord::Base.transaction do
  songs = []
  albums = []

  14.times do
    songs << Song.create!(
      chords: "A B C\n1 2 3#{(80+rand(23)).chr}", 
      date_written: Time.now - rand(200).days, 
      lyrics: make_lyrics(verses: "~4"), 
      name: make_title
    )
  end

  2.times do |n|
    albums << Album.create!(
      title: make_title,
      description: Faker::Lorem.paragraph(5),
      date_recorded: Time.now - rand(200).days,
      image_path: "album_#{n}"
    )
  end

  # attach the songs to an album
  song_sets = [(0..8), (9..13)]
  2.times do |album_number|
    track_counter_offset = song_sets[album_number].first - 1

    song_sets[album_number].each do |song_number|
      SongAlbum.create!(
        album_id: albums[album_number].id,
        song_id: songs[song_number].id,
        track_number: song_number - track_counter_offset
      )
    end
  end
end
