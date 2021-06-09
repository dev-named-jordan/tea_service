Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :customers, only: [:index, :show] do
        resources :subscriptions, only: [:index, :update, :create]
      end
    end
  end
end
