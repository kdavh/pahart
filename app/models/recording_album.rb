class RecordingAlbum < ActiveRecord::Base
  attr_accessible :track_number, :album_id, :recording_id

  belongs_to :album
  belongs_to :recording
end
