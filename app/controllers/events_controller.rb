class EventsController < ApplicationController
  before_action :find_event, only: [:show, :edit, :update, :destroy]

  def index
    cookies[:categories] = params[:categories]

    date = Events.where(date_start: cookies[:date_start])
    loca = Event.where(location: cookies[:location])
    catego = Event.where(categories: coockies[:categories])
    @events = date & loca & catego
  end

  def show
  end

  def home
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

  def categories
    cookies[:date_start] = params[:date_start]
    # cookies[:date_end] = params[:date_end]
    cookies[:location] = params[:location]

    date_first = Events.where(:date_start <= cookies[:date_start])
    date_finish = Events.where(:date_end >= cookies[:date_start])
    loca = Event.where(location: cookies[:location])
    @events = date & loca
  end

  private

  def find_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:name, :date_start, :date_end, :location, :periodicity, :category, :sub_category, :creator_id)
  end
end
