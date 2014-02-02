class EventsController < ApplicationController

  def index
    if params[:category]
      @events = Event.where(:category=>params[:category])
    else
      @events = Event.all_index
    end

    if params[:date]
      @events = @events.send(params[:date])
    end

    @date = params[:date]
    @category = params[:category]
  end

end
