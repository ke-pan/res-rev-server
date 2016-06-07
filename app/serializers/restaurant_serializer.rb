class RestaurantSerializer < ActiveModel::Serializer
  attributes :name,
             :description,
             :location,
             :open_at,
             :close_at,
             :category,
             :score,
             :pic_url

  has_many :rates

  def pic_url
    object.picture.url
  end
end
