class Movie < ApplicationRecord
  validates :title, :plot, presence: true

  has_many :purchases, as: :purchasable
  
  scope :sorted, -> {order('created_at DESC')}
end
