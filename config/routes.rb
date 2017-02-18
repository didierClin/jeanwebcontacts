Rails.application.routes.draw do
  # get 'prospects/index'
  #
  # get 'prospects/show'

  resources :prospects do
    collection { post :import }
  end

  devise_for :users

  root 'prospects#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
