class SongAlbumSerializer < ActiveModel::Serializer
  attributes :id, :song_id, :album_id
  has_one :song
  has_one :album
end
