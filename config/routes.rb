Rails.application.routes.draw do
  get 'vocabularys/index'
  devise_for :users
  root to: "vocabularys#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
