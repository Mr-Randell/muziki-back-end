class CustomPlaylistSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :user

  belongs_to :user, serializer: CustomUserSerializer
end
