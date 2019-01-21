Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :properties, only: [:index, :show]
      resources :units, only: [:index, :show, :create, :update]
      resources :amenities, only: [:index, :show]
      resources :leases, only: [:index, :show, :create, :update]
      resources :residents, only: [:index, :show]

      resources :users, only: [:create]
      post '/login', to: 'auth#create'
      post '/profile', to: 'users#profile'
    end
  end

end
