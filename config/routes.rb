Rails.application.routes.draw do
  resources :sections, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  root "sections#index"
end
