Rails.application.routes.draw do
  resources :homes
  post '/admins/index'
  get '/admins/index'
  devise_for :users
  get 'agenda/index'
  resources :events
  resources :users
  get '/users/index'
  post '/users/:id', to: 'users#role'

  post '/events/:id', to: 'admins#accept'
  post '/homes/:id', to: 'admins#accepted'




  get 'posts/index'
  root 'homes#index'
  get '/articles', to: 'posts#index', as: 'posts'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
