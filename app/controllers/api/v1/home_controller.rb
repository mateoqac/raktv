class Api::V1::HomeController < Api::V1::BaseController
  def index
    respond_with Movie.all.sorted + Season.all.includes(:episodes).sorted
  end
end
