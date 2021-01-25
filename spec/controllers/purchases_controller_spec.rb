require 'rails_helper'

RSpec.describe PurchasesController, type: :controller do
  describe 'GET #purchase' do
    before { post :purchase, params: attr, format: :json }

    let(:attr) do
      {
        entity_id: entity.id,
        entity_type: entity.class,
        user_id: user.id,
        video_quality: ['hd','sd'].sample,
        price: 2.99
      }
    end
    let(:entity) {create([:movie, :season].sample)}
    let(:user) {create(:user)}

    it "returns http success" do
      expect(response).to have_http_status(:created)
    end
  end
end
