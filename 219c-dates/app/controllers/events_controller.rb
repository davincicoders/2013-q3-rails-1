class EventsController < ApplicationController

  def index
    @events = Event.order(:id).all
    render :index and return
  end

  def new
    @event = Event.new
    render :new and return
  end

  def create
    @event = Event.new
    @event.name = params[:name]
    if @event.save == true
      redirect_to events_path and return
    else
      render :new and return
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.name = params[:name]
    if @event.save == true
      redirect_to events_path and return
    else
      render :edit and return
    end
  end

end
