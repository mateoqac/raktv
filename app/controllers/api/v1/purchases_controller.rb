class Api::V1::PurchasesController < Api::V1::BaseController

  def create
    respond_with Purchase.create!(create_params)
  end

  private

  def create_params
    prms = strong_params.slice(:video_quality,:price)
    prms.merge!(expires_at: ::Purchase::EXPIRATION_TIME, user_id: params[:user_id])
    prms.merge!(purchasable: extract_purchasable)
  end

  def extract_purchasable
    strong_params[:entity_type].camelize.constantize.find_by_id(strong_params[:entity_id])
  end

  def strong_params
    params.require(:purchase).permit(
      :video_quality,
      :entity_id,
      :entity_type,
      :price)
  end
end
