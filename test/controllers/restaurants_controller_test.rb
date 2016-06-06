require 'test_helper'

class RestaurantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @restaurant = create :restaurant
  end

  test 'index' do
    get restaurants_path
    assert_response :success
  end

  test 'show' do
    get restaurant_path(@restaurant.id)
    assert_response :success
  end
end
