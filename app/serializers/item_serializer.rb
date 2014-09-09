class ItemSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :url, :image, :tags, :user, :user_id, :comments
  has_many :comments
end
