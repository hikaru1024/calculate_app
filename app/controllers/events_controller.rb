class EventsController < ApplicationController
  def index
    @event = Event.find_by!(code: params['event_code'])
  end

  def new

  end

  def create
    event = Event.create(
      name: params[:name],
      code: '123456789qwe'
    )

    redirect_to "/123456789qwe"
  end

  private


end