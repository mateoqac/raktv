require 'rails_helper'

RSpec.describe Season, type: :model do
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:plot) }
  it { is_expected.to validate_presence_of(:number) }

  it { should have_many(:episodes) }
end
