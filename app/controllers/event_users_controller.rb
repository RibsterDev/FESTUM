class EventUsersController < ApplicationController


  def index
    @event_users = EventUser.all
  end

  def create
    # bien prende l'event_id de l'url en fonction de la route
    event = Event.find(params[:event_id])
    # EventUser.new à belongs to user , event d'ou les clés user & event
    @event_user = EventUser.new(user: current_user, event: event)
    @event_user.save!
    # redirect vers la vue de mes events à moi index de event_users
    redirect_to event_users_path
  end

  def destroy
    # bien suivre la route et regarder l'url on a juste besoin de l'id soit params[:id]
    @event_user = EventUser.find(params[:id])
    @event_user.destroy
    # redirect vers la vue de mes events à moi index de event_users
    redirect_to event_users_path
  end
end
