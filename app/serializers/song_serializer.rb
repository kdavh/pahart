class SongSerializer < ActiveModel::Serializer
  attributes :id, :name, :lyrics, :chords, :date_written

  has_many :song_albums
end
