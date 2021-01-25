require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe 'GET #index' do
    before do
      create_list(:movie, 5)
      create_list(:season, 5, :with_episodes)
    end
    before { get :index, format: :json }

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it "JSON body response contains expected recipe attributes" do
      parsed_response = JSON.parse(response.body)
      expect(parsed_response['seasons'].length).to eq(5)
      expect(parsed_response['movies'].length).to eq(5)
    end
  end

end
