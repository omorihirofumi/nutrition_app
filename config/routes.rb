Rails.application.routes.draw do
  devise_for :users
  root to: 'home#top'
  # get 'users/index'
  
  # get 'calendar/index'
  
  resources :home, as: :homes, only: [:new] do
    collection do
      get :top
    end
  end
  resources :profile, as: :profiles, only: [:new, :create]
  # resources :blogs

  
  # get 'home/top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


