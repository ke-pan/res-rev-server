Rails.application.routes.draw do
  scope 'api' do
    resources :restaurants do
      resources :rates
    end
    resources :users

    use_doorkeeper
  end
end
