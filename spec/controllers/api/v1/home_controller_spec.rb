require 'rails_helper'

RSpec.describe "Api::V1::HomeController", type: :request do
  describe 'GET home#index' do
    before do
      create_list(:movie, 5)
      create_list(:season, 5, :with_episodes)
    end

    it "returns http success" do
      get v1_root_path, :headers => { "Content-Type": "application/json" }
      expect(response).to have_http_status(:success)
    end

    it "JSON body response contains expected recipe attributes" do
      get v1_root_path, :headers => { "Content-Type": "application/json" }
      parsed_response = JSON.parse(response.body)['data']
      expect(parsed_response.count).to eq(10)
    end
  end

end
