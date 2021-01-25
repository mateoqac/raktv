FactoryBot.define do
  factory :season do
    title {Faker::Movie.title}
    plot {Faker::Lorem.paragraph}
    number { rand(3)}
  end

  trait :with_episodes do
    after(:create) do |season, _|
      5.times do |i|
        create(:episode, season_id:season.id, episode_number: i+1)
      end
    end
  end
end
