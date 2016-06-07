FactoryGirl.define do
  factory :restaurant do
    name 'Little Pissa'
    location 'Rose Road'
    description 'Cool and tasty'
    category 'Italian'
    open_at "11:00"
    close_at "12:00"
    picture File.new("#{Rails.root}/public/restaurant1.jpg")
    score 4.3
  end
end
