class SongSerializer < ActiveModel::Serializer
  attributes :id, :name, :lyrics, :chords, :date_written
end
