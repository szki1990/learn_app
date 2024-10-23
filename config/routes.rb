Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :books, only: [:new, :index, :show, :create, :edit, :update, :destroy]
  get '/top' => 'homes#top'
  get '/homes/about' => 'homes#about'
  
end
