class Api::V1::SeasonSerializer < ActiveModel::Serializer
  type :season

  attributes :title, :plot, :number, :episodes

  class EpisodeSerializer < ActiveModel::Serializer
    attributes :title, :plot, :episode_number
  end

  def episodes
    ActiveModelSerializers::SerializableResource.new(object.episodes,  each_serializer: EpisodeSerializer)
  end
end
