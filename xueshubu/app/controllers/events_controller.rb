class EventsController < ApplicationController
  def index
    if params[:category]
      @events = Event.where(:category=>params[:category]).last(10)
    else
      @events = Event.last(10)
    end
  end
end
