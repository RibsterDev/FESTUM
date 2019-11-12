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

  def result
    filter_by_location if @params[:location].present?
    filter_by_date_start if @params[:date_start].present?
    filter_by_category if @params[:category].present?

    @events
  end

  private

  def filter_by_location
    @events = @events.where(location: @params[:location])
  end

  def filter_by_date_start
    @events = @events.where(date_start: @params[:date_start])
  end

  def filter_by_category
    @events = @events.where(category: @params[:category])
  end
end
