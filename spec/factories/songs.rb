FactoryGirl.define do
  factory :song do
      song_name     { Faker::Lorem.word(1) }
      artist        { build(:artist) }

      trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
