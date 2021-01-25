class SeasonsController < ApplicationController

  def index
    @seasons = Season.all.sorted.with_episodes

    render json: @seasons,include: [:episodes], status: :ok
  end
end
