Rails.application.routes.draw do
  resources :lists

  resources :users do
    resources :lists do
      resources :products
    end
  end
  root "users#index"
end

