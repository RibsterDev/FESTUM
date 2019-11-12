class EventsController < ApplicationController
  before_action :find_event, only: [:show, :edit, :update, :destroy]

def index
  @events = Event.all
end

def show
end

def new
  @event = Event.new
end

def create
  @event = Event.new(event_params)
  if @event.save
    redirect_to events_path
  else
    render :new
  end
end

def edit
end

def update
  @event.update(event_params)
end

def destroy
  @event.destroy
  redirect_to events_path
end


private

  def find_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:restaurant).permit(:name, :address, :periodicity, :category, :sub_category, :creator_id)
  end
end
