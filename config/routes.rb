Rails.application.routes.draw do
  post 'bitlies/index'

  get 'bitlies/counter'
 
  resources :bitlies
 
  root 'bitlies#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
