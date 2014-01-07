class Album < ActiveRecord::Base
  has_many :song_albums
  has_many :songs, through: :song_albums

  validates :date_recorded, :title, presence: true
end
