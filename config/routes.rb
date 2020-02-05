Rails.application.routes.draw do
  devise_for :users
  root to: 'home#top'
  get 'users/index'
  
  get 'calendar/index'
  
  resources :home, only: [:top, :new, :tribia1]
  resources :profile
  resources :blogs

  
  # get 'home/top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


