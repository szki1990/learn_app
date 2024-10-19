Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'books/new'
  get 'books' => 'books#index'
  get 'books/:id' => 'books#show', as: 'book'
  post 'books' => 'books#create'
  get '/top' => 'homes#top'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  patch 'books/:id' => 'books#update', as: 'update_book'
end
