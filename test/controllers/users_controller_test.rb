require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test 'create' do
    assert_difference('User.count', 1) do
      post users_path, params: {
        data: {
          attributes: {
            name: 'hello',
            password: 'world!'
          },
          type: 'users'
        }
      }
    end
    assert_response :created
  end

  test 'create with empty name' do
    post users_path, params: {
      data: {
        attributes: {
          name: '',
          password: 'world!'
        },
        type: 'users'
      }
    }
    assert_response 422
    assert @response.body.include? "data/attributes/name"
  end
end
