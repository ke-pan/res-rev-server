Rails.application.routes.draw do
  scope 'api' do
    resources :restaurants do
      resources :rates
    end
    resources :users
  end
end
