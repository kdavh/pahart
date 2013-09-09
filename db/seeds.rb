# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
require 'faker'
include SeedsHelper

ActiveRecord::Base.transaction do
  songs = []
  albums = []
  recordings = []

  14.times do
    songs << Song.create!(
      chords: "A B C\n1 2 3#{(80+rand(23)).chr}", 
      date_written: Time.now - rand(200).days, 
      lyrics: make_lyrics(verses: "~4"), 
      name: make_title
    )
  end

  17.times do |n|
    song_id = n % 13
    recordings << Recording.create!(
      name: Faker::Lorem.words(2 + rand(2)),
      date_recorded: Time.now - rand(200).days,
      song_id: song_id
    )
  end

  3.times do |n|
    albums << Album.create!(
      title: make_title,
      description: Faker::Lorem.paragraph(5),
      date_recorded: Time.now - rand(200).days,
      image_path: "album_#{n}"
    )
  end

  # attach the recordings to an album
  recording_sets = [(0..10), (11..15), (16..16)]
  3.times do |album_number|
    track_counter_offset = recording_sets[album_number].first - 1

    recording_sets[album_number].each do |recording_number|
      RecordingAlbum.create!(
        album_id: albums[album_number].id,
        recording_id: recordings[recording_number].id,
        track_number: recording_number - track_counter_offset
      )
    end
  end
end
