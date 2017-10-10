Rails.application.routes.draw do
  devise_for :users
  resources :rooms

  root 'pages#home'

  get '/rooms' => 'pages#rooms'

  get '/contact' => 'pages#contact'

  get '/about' => 'pages#about'

  get '/admin' => 'pages#admin'

  # post '/rooms/:id' => 'rooms#delete'

  match '/contact' => 'pages#enquiry', via: :post

  delete '/rooms/:id' => 'rooms#delete'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
