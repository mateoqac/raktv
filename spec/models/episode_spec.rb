require 'rails_helper'

RSpec.describe Episode, type: :model do
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:plot) }
  it { is_expected.to validate_presence_of(:episode_number) }

  it { should belong_to(:season) }
end
