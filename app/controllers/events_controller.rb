class EventsController < ApplicationController
  

  
  def new
    
  end

  def cretate
    @event = Event.create(event_params)
    
    if @event.save
      redirect_to :action => "new"
    else
      render plain: "エラー"
    end
  end

  private
  def event_params
    params.require(:event).permit(:name)
  end

end
