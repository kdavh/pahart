Pahart::Application.routes.draw do
  get "songs/index"

  root to: 'welcome#index'
  resources :songs, only: [:index]
  resources :albums, only: [:index]
  post '/contact', to: 'emails#contact'
end
