Restaurant.create(name: 'Little Pissa',
                  location: 'Rose Road',
                  description: 'Cool and tasty',
                  category: 'Italian',
                  open_at: "11:00",
                  close_at: "22:00",
                  picture: File.new("#{Rails.root}/public/restaurant1.jpg"),
                  score: 4.3)
