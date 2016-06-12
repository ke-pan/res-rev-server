FactoryGirl.define do
  factory :rate do
    score 4
    comment "It's very delicious"
    restaurant
    user
  end
end
