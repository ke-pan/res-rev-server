Rails.application.routes.draw do
  resources :users
  scope 'api' do
    resources :restaurants do
      resources :rates
    end
  end
end
