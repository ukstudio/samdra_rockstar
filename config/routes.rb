SamudraRockstar::Application.routes.draw do
  root :to => 'map#index'

  resources :users
end
