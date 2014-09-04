class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :email, :items
end
