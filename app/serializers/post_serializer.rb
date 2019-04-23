class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :created_at
  def user
    { id: object.user.id,
      name: object.user.username }
  end
end
