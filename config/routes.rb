Gamedocs::Application.routes.draw do
  resources :lenses
  root :to => 'lenses#index'
end
