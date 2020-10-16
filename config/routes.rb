Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :fans, except: [:edit, :show]
  resources :artists
  resources :concerts


end
