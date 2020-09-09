Rails.application.routes.draw do
  resources :flights
  resources :users
  resources :bookings
  
  
  delete '/logout', to: 'sessions#logout', as: 'logout'

  post '/login', to: 'sessions#login', as: 'login'
  get '/sessions/new', to: 'sessions#new', as: 'new_login'

end
