class EventHome
  def initialize(params)
    @events = Event.all
    @params = params
  end

  def home
    filter_by_location if @params[:location].present?
    filter_by_date_start if @params[:date_start].present?

    @events
  end

  private

  def filter_by_location
    @events = Event.where(location: @params[:location])
  end

  def filter_by_date_start
    @events = Event.where(date_start: @params[:date_start])
  end
end
