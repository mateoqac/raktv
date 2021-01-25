class Episode < ApplicationRecord
  validates :title, :plot, :episode_number, presence: true
  self.implicit_order_column = 'episode_number'

  belongs_to :season
end
