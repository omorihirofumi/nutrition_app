Rails.application.routes.draw do
  devise_for :users
  root to: 'home#top'
  resources :home, as: :homes, only: [:new, :create] do
    collection do
      get :top
      get :tribia1
      get :tribia2
      get :tribia3
      get :tribia4
    end
  end
  resources :profile, as: :profiles, only: [:new, :create, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


