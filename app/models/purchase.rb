class Purchase < ApplicationRecord
  EXPIRATION_TIME = 2.days.from_now

  HD = 'hd'.freeze
  SD = 'sd'.freeze
  VIDEO_QUALITIES = [HD, SD].freeze

  validates_associated :user
  validates :price, :video_quality, presence: true
  validates :video_quality, inclusion: { in: VIDEO_QUALITIES }

  belongs_to :purchasable, polymorphic: true

  belongs_to :user
end
