class Season < ApplicationRecord
  validates :title, :plot, :number, presence: true

  has_many :purchases, as: :purchasable
  has_many :episodes

  scope :sorted, -> {order('created_at DESC')}
  scope :with_episodes, -> {includes(:episodes)}
end
