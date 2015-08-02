Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root "pages#home"

  get '/home', to: 'pages#home'
  get '/about', to: 'pages#about'
  
  resources :posts
  resources :workouts
  
end
