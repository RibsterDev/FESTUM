Rails.application.routes.draw do
  devise_for :users
  root to: 'events#home'
  resources :events, only: [:index, :show, :new, :create] do
    resources :event_users, only: [:create]
    collection do
      get 'categories'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

# class EventsController < ApplicationController
#   def cookies
#     date = Events.where(date_start: cookies[:date_start])
#     loca = Event.where(location: cookies[:location])

#   end
# end

