Rails.application.routes.draw do
  devise_for :users
  root to: 'events#home'
  resources :events, only: [:index, :show, :new, :create] do
    resources :event_users, only: [:create]
    collection do
      get 'categories'
    end
  end
  resources :events, only: [:destroy]
  # acces a index & destroy en dehors du nestage (sinon les routes ne sont pas bonnes)
  resources :event_users, only: [:index, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # devise_scope :user do
  #   get 'log_in', to: 'events#home'
  # end

end


