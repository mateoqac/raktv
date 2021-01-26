require 'rails_helper'

RSpec.describe "Api::V1::PurchasesController", type: :request do

  describe "POST purchases#create" do
    let(:entity) {create([:movie, :season].sample)}
    let(:user) {create(:user)}

    it 'create purchase with valid attributes' do
      purchase_params = { purchase: {
        entity_id: entity.id,
        entity_type: entity.class.to_s,
        video_quality: ['hd','sd'].sample,
        price: 2.99
      }}

      post v1_user_purchases_path(user), :params => purchase_params.to_json, :headers => { "Content-Type": "application/json" }

      expect(response).to have_http_status(:created)
    end
  end
end
