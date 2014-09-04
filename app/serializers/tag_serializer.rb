class TagSerializer < ActiveModel::Serializer
  attributes :id, :name, :items
  has_many :items
end
