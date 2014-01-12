class EventsController < ApplicationController
  def index
    @events = Event.all.last(10)
  end
end
