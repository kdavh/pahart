class AlbumSerializer < ActiveModel::Serializer
  attributes :id, :date_recorded, :description, :image_path, :title, :bandcamp_name, 
    :bandcamp_id

  has_many :songs,        key: :songs,      embed: :ids, include: true
  has_many :song_albums,  key: :song_albums, embed: :ids, include: true
end
