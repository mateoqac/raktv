FactoryBot.define do
  factory :episode do
    title {Faker::Movie.title}
    plot {Faker::Lorem.paragraph}
    episode_number { rand(5)}
    season_id {create(:season).id}
  end
end
