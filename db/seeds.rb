18.times do
  Restaurant.create(
    name: Faker::Company.name,
    location: Faker::Address.street_address,
    description: Faker::Lorem.paragraph,
    category: Faker::Address.country,
    open_at: '11:00',
    close_at: '22:00',
    picture: File.new("#{Rails.root}/public/restaurant_images/restaurant#{rand(10)}.jpg"),
    score: rand * 5
  )
end

50.times do |i|
  User.create(
    name: Faker::Name.first_name + i.to_s,
    password: '1234qwer',
    password_confirmation: '1234qwer'
  )
end

100.times do
  Rate.create(
    score: 1 + rand(5),
    comment: Faker::Lorem.paragraph,
    restaurant_id: 1 + rand(18),
    user_id: 1 + rand(50)
  )
end
