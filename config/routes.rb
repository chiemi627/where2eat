Rails.application.routes.draw do
  resources :eateries
  get 'eateries/index'
  get 'eateries/show'
  get 'eateries/new'
  get 'eateries/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'lunch/go'
  root 'lunch#go'
end
