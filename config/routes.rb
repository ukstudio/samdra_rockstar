SamudraRockstar::Application.routes.draw do
  resources :towers

  resources :territories

  root :to => 'map#index'

  resources :users
end
