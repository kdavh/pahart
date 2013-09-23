Pahart::Application.routes.draw do
  root to: 'welcome#index'
  resources :songs
  resources :albums, only: [:show, :index]
end
