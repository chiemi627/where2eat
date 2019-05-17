Rails.application.routes.draw do
  get 'eateries/new'
  post 'eateries/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'lunch/go'
  root 'lunch#go'
end
