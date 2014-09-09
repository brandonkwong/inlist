class CommentsSerializer < ActiveModel::Serializer
  attributes :id, :comment, :user
end
