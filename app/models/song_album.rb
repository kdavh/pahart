class SongAlbum < ActiveRecord::Base
  attr_accessible :track_number, :album_id, :song_id

  belongs_to :album
  belongs_to :song
end
