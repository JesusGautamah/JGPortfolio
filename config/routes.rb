Rails.application.routes.draw do


  resources :git_repositories
  resources :videos
  resources :articles
  resources :docs
  resources :projects
  resources :sections, only: [:index, :show]

  resources :projects do 
    resources :git_repositories
    resources :videos
    resources :articles
    resources :docs
    resources :projects
  end


  get    'sign_in'   => 'sessions#new'
  post   'sign_in'   => 'sessions#create'
  get 'sign_out'  => 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  root "sections#index"
end
