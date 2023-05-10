Rails.application.routes.draw do
  
  get 'books/new'
  post 'books' => 'books#create'
  get 'books' =>'books#index'
  get 'books/:id' => 'books#show'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  resources :books
  root to: 'homes#top'
  get '/top' => 'homes#top'
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
