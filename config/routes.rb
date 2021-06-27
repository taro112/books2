Rails.application.routes.draw do
  devise_for :user
  
  root to: 'homes#top'
  
  get '/home/about' => 'homes#index'
  
  resources :books, only: [:new, :create, :index, :show, :destroy]
  
  resources :users, only: [:show, :index]
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
