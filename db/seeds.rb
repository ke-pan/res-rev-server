Restaurant.create({
                    name: 'Little Pissa',
                    location: 'Rose Road',
                    description: 'Cool and tasty',
                    category: 'Italian',
                    open_at: ::Tod::TimeOfDay.new(11),
                    close_at: ::Tod::TimeOfDay.new(22),
                  })
