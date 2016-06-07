require 'test_helper'

class RatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @restaurant = create :restaurant
    @rate = create :rate, restaurant: @restaurant
  end

  test 'index' do
    get restaurant_rates_path(@restaurant)
    assert_response :success
  end
end
