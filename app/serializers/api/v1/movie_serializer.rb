class Api::V1::MovieSerializer < ActiveModel::Serializer
  type :movie

  attributes :title, :plot
end
