class Recording < ActiveRecord::Base
  attr_accessible :date_recorded, :name, :song_id

  belongs_to :song
  has_many :recording_albums
  has_many :albums, through: :recording_albums

  validates :song_id, :name, :date_recorded, presence: true
end
