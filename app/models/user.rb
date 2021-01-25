class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true

  has_many :purchases, inverse_of: :user

  def library
    purchases.order('expires_at ASC')
  end

  def library_to_json
    library.map(&:purchasable).map(&:to_json)
  end
end
