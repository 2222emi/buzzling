Rails.application.routes.draw do
  
  devise_for :users
  root to: "tweets#index"

  resources :tweets do
   resources :comments
  end

  resources :users do
   get :search, on: :collection
  end
  
end

