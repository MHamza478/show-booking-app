Rails.application.routes.draw do
  root 'shows#index'
  post '/add_show' => 'shows#create'
  post '/add_movie' => 'movies#create'
  post '/add_cinema' => 'cinemas#create'
  
  resources :cinemas
  resources :movies
  resources :shows
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
