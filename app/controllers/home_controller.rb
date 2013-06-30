class HomeController < ApplicationController
  def index
    @events = Event.last(5)
    @menu_items = MenuItem.where(:highlight => true)
  end
end
