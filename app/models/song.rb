class Song < ActiveRecord::Base
  attr_accessible :date_written, :lyrics, :name, :capo_instructions

  has_many :song_albums
  has_many :albums, through: :song_albums

  validates :lyrics, :name, presence: true
end
