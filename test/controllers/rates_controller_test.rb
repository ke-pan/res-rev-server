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

  test 'create' do
    assert_difference('Rate.count', 1) do
      post restaurant_rates_path(@restaurant),
        params: {
          data: {
            type: 'rates',
            attributes: {
              score: 4,
              comment: 'good'
            }
          }
        }
    end
  end
end
