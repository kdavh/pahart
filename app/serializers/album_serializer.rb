class AlbumSerializer < ActiveModel::Serializer
  attributes :date_recorded, :description, :image_path, :title
end
