Rails.application.routes.draw do
  devise_for :users
  root to: 'events#home'

  # on simule le create de event_user en get pour hacker le redirect du sign in
  get '/events/:event_id/add_event', to: 'event_users#create', as: 'add_event'

  resources :events, only: [:index, :show, :new, :create] do
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


