require 'rails_helper'

RSpec.describe Purchase, type: :model do
  it { is_expected.to validate_presence_of(:price) }
  it { is_expected.to validate_presence_of(:video_quality) }

  it { should belong_to(:user) }
  it { should belong_to(:purchasable)}
end
