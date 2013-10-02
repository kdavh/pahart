class SongAlbumSerializer < ActiveModel::Serializer
  attributes :id, :song_id, :album_id, :track_number

  has_one :song,  key: :song, embed: :id, include: true 
  has_one :album,  key: :album, embed: :id, include: true 
end
