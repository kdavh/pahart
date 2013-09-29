class Song < ActiveRecord::Base
  attr_accessible :chords, :date_written, :lyrics, :name

  has_many :song_albums
  has_many :albums, through: :song_albums

  validates :chords, :date_written, :lyrics, :name, presence: true
end
