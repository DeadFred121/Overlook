class PagesController < ApplicationController
  def home
  end

  def rooms
    @rooms = Room.all
  end

  def contact
  end

  def about
  end
end
