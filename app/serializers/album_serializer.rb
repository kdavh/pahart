class AlbumSerializer < ActiveModel::Serializer
  attributes :id, :date_recorded, :description, :image_path, :title

  has_many :songs
end
