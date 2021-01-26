class Api::V1::MoviesController < Api::V1::BaseController
  def index
    respond_with Movie.all.sorted
  end
end
