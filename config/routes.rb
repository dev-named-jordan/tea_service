Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :teas, only: [:index]
      resources :customers, only: [:index, :show] do
        post '/subscriptions/:subscription_id', to: 'customer_subscriptions#create'
        resources :subscriptions, only: [:index, :update, :create]
      end
    end
  end
end
