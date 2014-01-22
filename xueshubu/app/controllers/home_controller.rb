class HomeController < ApplicationController
  def home
    @event = Event.where(:highlighted=>1).last
    @staffs = Staff.all
  end
end
