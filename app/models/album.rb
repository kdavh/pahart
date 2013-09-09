class Album < ActiveRecord::Base
  attr_accessible :date_recorded, :description, :image_path, :title

  has_many :recording_albums
  has_many :recordings, through: :recording_albums
  has_many :songs, through: :recordings

  validates :date_recorded, :description, :title, presence: true
end
