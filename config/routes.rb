Rails.application.routes.draw do
  resources :questions, only: [:index, :show]

  resources :disciplines, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
