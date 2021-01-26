class Api::V1::SeasonsController < Api::V1::BaseController
  def index
    respond_with Season.all.sorted.with_episodes
  end
end
