Pahart::Application.routes.draw do
  root to: 'welcome#index'
  resources :songs
  resources :albums, only: [:show, :index]
  post '/contact', to: 'emails#contact'
end
