Rails.application.routes.draw do

  get 'sessions/new'
  get '/home', to: 'static_pages#home'
  get '/about', to: 'static_pages#about'
  get '/post', to: 'static_pages#post'
  get '/signup', to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
  resources :blog_posts

  root 'static_pages#home'
  
end
