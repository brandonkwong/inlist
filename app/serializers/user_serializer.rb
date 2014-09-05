class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :email, :items
  delegate :current_user, to: :scope
end
