Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'

  get '/rooms' => 'pages#rooms'

  get '/contact' => 'pages#contact'

  get '/about' => 'pages#about'

  get '/admin' => 'pages#admin'

  match '/contact' => 'pages#enquiry', via: :post

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
