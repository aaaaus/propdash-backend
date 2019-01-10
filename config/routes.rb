Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :properties, only: [:index, :show]
      resources :units, only: [:index, :show, :update]
      resources :leases, only: [:index, :show]
    end
  end

end
