Rails.application.routes.draw do


  resources :videos
  resources :articles
  resources :docs
  resources :git_repostories
  resources :projects
  resources :sections, only: [:index, :show]

  get    'sign_in'   => 'sessions#new'
  post   'sign_in'   => 'sessions#create'
  get 'sign_out'  => 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  root "sections#index"
end
