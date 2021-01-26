class Api::V1::UsersController < Api::V1::BaseController
  def library
    respond_with purchases
  end

  private

  def purchases
    @purchases ||= user.purchases.not_expired
  end

  def user
    @user ||= User.find_by!(id: params[:user_id])
  end
end
