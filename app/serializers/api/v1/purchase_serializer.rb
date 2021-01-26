class Api::V1::PurchaseSerializer < ActiveModel::Serializer
  type :purchase

  attributes :expires_at, :user_id, :video_quality, :purchasable

end
