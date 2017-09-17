Rails.application.routes.draw do
  get 'projects/index'
  post 'projects/create'
  post 'projects/delete'

  get 'about/index'

  devise_for :users
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
