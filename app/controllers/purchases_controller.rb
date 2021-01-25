class PurchasesController < ApplicationController
  def purchase
    purchasable = extract_purchasable(purchase_params)
    create_params = purchase_params.slice(:video_quality,:price, :user_id).merge(expires_at: ::Purchase::EXPIRATION_TIME)
    create_params.merge!(purchasable: purchasable)
    purchase = Purchase.create(create_params)

    if purchase.save
      render json: purchase.to_json, status: :created
    else
      render_errors purchase
    end
  end

  private

  def purchase_params
    params.permit(:video_quality, :entity_id, :entity_type, :user_id, :price)
  end

  def extract_purchasable(params)
    params[:entity_type].camelize.constantize.find_by_id(params[:entity_id])
  end
end
