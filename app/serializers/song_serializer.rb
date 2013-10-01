class SongSerializer < ActiveModel::Serializer
  attributes :id, :name, :lyrics, :chords, :date_written

  has_many :albums, key: :albums
  embed :ids, include: true
end
