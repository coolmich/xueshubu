class HomeController < ApplicationController
  def home
    @staffs = Staff.all
  end
end
