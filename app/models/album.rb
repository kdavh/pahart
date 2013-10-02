class Album < ActiveRecord::Base
  attr_accessible :date_recorded, :description, :image_path, :title, :bandcamp_name, 
    :bandcamp_id

  has_many :song_albums
  has_many :songs, through: :song_albums

  validates :date_recorded, :description, :title, presence: true
end
