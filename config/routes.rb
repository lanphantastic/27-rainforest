Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "products#index"

  resource :users, only: %i(create new)
  resource :sessions, ony %i(create new destroy)
  resources :products do
    resources :reviews, except: [:index, :new, :show]
  end
end
