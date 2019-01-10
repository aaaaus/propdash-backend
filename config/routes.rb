Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :properties, only: [:index, :show]
      resources :units, only: [:index, :show, :update]
      resources :amenities, only: [:index, :show]
      resources :leases, only: [:index, :show]
      resources :residents, only: [:index, :show]
    end
  end

end
