require 'rails_helper'

RSpec.describe UserController, type: :controller do
  describe 'GET #library' do
    let(:user) { create(:user) }

    context 'when purchases were made' do
      before do
        create_list(:purchase, 5, user_id: user.id)
      end
      before { get :library, params:{user_id: user.id},format: :json }

      it "returns http success" do
        expect(response).to have_http_status(:success)
      end

      it "JSON body response contains expected recipe attributes" do
        parsed_response = JSON.parse(response.body)
        expect(parsed_response.length).to eq(5)
      end
    end

    context 'when user_id is wrong' do
      before { get :library, params:{user_id: 10},format: :json }
      it "returns http success" do
        expect(response).to have_http_status(:success)
      end
      it "JSON body response contains expected message" do
        parsed_response = JSON.parse(response.body)
        expect(parsed_response).to eq('User not found')
      end
    end
  end
end
