Pahart::Application.routes.draw do
  root to: 'welcome#index'
  resources :songs
end
