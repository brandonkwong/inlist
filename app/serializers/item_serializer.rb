class ItemSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :url, :image, :tags
end
