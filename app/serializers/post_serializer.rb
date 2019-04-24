class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :created_at
  belongs_to :user
  def user
    { id: object.user.id,
      name: object.user.username }
  end
end
