class UserSerializer < ActiveModel::Serializer
  attributes :username, :avatar, :bio, :isManager
end
