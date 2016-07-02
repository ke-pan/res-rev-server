require 'test_helper'

class RatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @restaurant = create :restaurant
  end

  test 'index' do
    get restaurant_rates_path(@restaurant)
    assert_response :success
  end

  test 'create' do
    user = create :user
    token = Doorkeeper::AccessToken.create(resource_owner_id: user.id)
    assert_difference('Rate.count', 1) do
      post(
        restaurant_rates_path(@restaurant),
        params: {
          data: {
            type: 'rates',
            attributes: {
              score: 4,
              comment: 'good'
            }
          },
          access_token: token.token
        }
      )
    end
    assert_response 201
  end
end
