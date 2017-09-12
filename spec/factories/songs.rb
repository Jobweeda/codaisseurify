FactoryGirl.define do
  factory :song do
      name          "Balaclava"
      artist        { build(:artist) }

      trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
