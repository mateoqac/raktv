FactoryBot.define do
  factory :purchase do
    price {(rand()*rand(10)).round(2)}
    video_quality { %w(hd sd).sample}
    user
    purchasable {create([:movie, :season].sample)}
    expires_at {2.days.from_now}
  end
end
