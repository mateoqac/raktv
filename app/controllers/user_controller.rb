class UserController < ApplicationController

  def library
    user =  User.find_by_id(params[:user_id])

    if user
      render json: user.library_to_json, status: :ok
    else
      render json: 'User not found'.to_json, status: :ok
    end
  end
end
