SamudraRockstar::Application.routes.draw do
  resources :territories

  root :to => 'map#index'

  resources :users
end
