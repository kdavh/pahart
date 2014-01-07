class Song < ActiveRecord::Base
  has_many :song_albums
  has_many :albums, through: :song_albums

  validates :lyrics, :name, presence: true
end
