class EventController < ApplicationController
  def index
  end
  def createEvent
    event_params = params.require(:event).permit(:title, :describe, :user_id)
    unless event_params.nil?
      Event.create(event_params)
    end
    redirect_to :controller => 'home', :action => 'index'
  end
end
