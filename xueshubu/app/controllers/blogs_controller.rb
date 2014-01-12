class BlogsController < ApplicationController
  def index
    @blog = Blog.where(:category=>params[:category])
    if @blog.count == 1
      @blog = @blog.first
      render 'show'
    end
  end

  def show
    @blog ||= Blog.find(params[:id])
  end
end
