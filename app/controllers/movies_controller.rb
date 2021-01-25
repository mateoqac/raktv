class MoviesController < ApplicationController

  def index
    @movies = Movie.all.sorted

    render json: @movies, status: :ok
  end
end
