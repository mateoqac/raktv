class Api::V1::UserSerializer < ActiveModel::Serializer
  type :user

  attributes :email
end
