class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index, :categories, :show]
  before_action :find_event, only: [:show, :edit, :update, :destroy]
  IMAGE_URL = {
    'Concert' => 'https://images.unsplash.com/photo-1464375117522-1311d6a5b81f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
    'Festival' => 'https://images.unsplash.com/photo-1514525253161-7a46d19cd819?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80',
    'Musique' => 'https://images.unsplash.com/photo-1556379118-7034d926d258?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1576&q=80',
    'Exposition' => 'https://images.unsplash.com/photo-1531243269054-5ebf6f34081e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
    'Danse' => 'https://images.unsplash.com/photo-1540324155974-7523202daa3f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=658&q=80',
    'Spectacle' => 'https://images.unsplash.com/photo-1469510360132-9fa6abcd9df0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'

  }
  def index
    cookies[:category] = params[:category]
    @events = EventHome.new(cookies).result

    # date = Event.where(date_start: cookies[:date_start])
    # loca = Event.where(location: cookies[:location])
    # catego = Event.where(categories: cookies[:categories])
    # @events = date & loca & catego

  end

  def show
  end


  def categories
    @img_url = IMAGE_URL
    cookies[:date_start] = params[:date_start]
    cookies[:location] = params[:location]
    @events = EventHome.new(params).home
  end


  def home
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.creator = current_user
    if @event.save
      redirect_to categories_events_path
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
    params.require(:event).permit(:name, :date_start, :date_end, :location, :category, :sub_category, :creator_id)
  end
end

