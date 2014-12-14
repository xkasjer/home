class MainController < ApplicationController
	before_action :preparate_sidebar

  def index
  end

  def room
  	@room = Room.find(params[:id])
  end

  def category
  	@category = Category.find(params[:id])
  end


  private 
  def preparate_sidebar
  	@rooms = Room.all
  	@categories = Category.all

  end
end
