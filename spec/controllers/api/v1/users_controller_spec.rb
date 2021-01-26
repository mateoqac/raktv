require 'rails_helper'

RSpec.describe "Api::V1::UsersController", type: :request do

  describe "GET users#library" do
    let(:user) {create(:user)}

    context 'when purchases were made' do
      before do
        create_list(:purchase, 5, user_id: user.id)
      end

      it "JSON body response contains expected recipe attributes" do
        get v1_user_library_path(user), :headers => { "Content-Type": "application/json" }
        parsed_response = JSON.parse(response.body)['data']
        expect(parsed_response.length).to eq(5)
        expect(response).to have_http_status(:success)
      end
    end

    context 'when user_id is wrong' do
      it "returns nothing" do
        get v1_user_library_path(user_id:10), :headers => { "Content-Type": "application/json" }
        parsed_response = JSON.parse(response.body)['data']
        expect(parsed_response).to eq(nil)
      end
    end
  end
end
