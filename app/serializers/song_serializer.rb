class SongSerializer < ActiveModel::Serializer
  attributes :id, :name, :lyrics, :date_written

  has_many :albums,       key: :albums,     embed: :ids
  has_many :song_albums,  key: :song_albums, embed: :ids
end
