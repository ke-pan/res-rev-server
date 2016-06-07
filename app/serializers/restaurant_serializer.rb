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

  def open_at
    object.open_at.strftime("%I:%M %P")
  end

  def close_at
    object.close_at.strftime("%I:%M %P")
  end
end
