FactoryGirl.define do
  factory :artist do
    artist_name  { Faker::Name.artist_name }
  end
end
