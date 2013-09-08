class AdminHousesController < ApplicationController

  before_filter do
    if session[:admin_id] != nil
      @admin = Admin.where(id: session[:admin_id]).first
    else
      flash[:error] = "You must be logged in to see that page."
      redirect_to "/sessions/new" and return
    end
  end

  def index
    @houses = House.order(:id)
    render :index and return
  end

  def edit
    @house = House.where(id: params[:id]).first
    render :edit and return
  end

  def update
    @house                 = House.find(params[:id])
    @house.address         = params[:address]
    @house.city            = params[:city]
    @house.state           = params[:state]
    @house.price           = params[:price]
    @house.num_bedrooms    = params[:num_bedrooms]
    @house.num_stories     = params[:num_stories]
    @house.num_square_feet = params[:num_square_feet]
    @house.image_url       = params[:image_url]

    if @house.save
      redirect_to "/admin_houses" and return
    else
      render :edit and return
    end
  end

  def new
    @house = House.new
    render :new and return
  end

  def create
    @house                 = House.new
    @house.address         = params[:address]
    @house.city            = params[:city]
    @house.state           = params[:state]
    @house.price           = params[:price]
    @house.num_bedrooms    = params[:num_bedrooms]
    @house.num_stories     = params[:num_stories]
    @house.num_square_feet = params[:num_square_feet]
    @house.image_url       = params[:image_url]

    if @house.save
      redirect_to "/admin_houses" and return
    else
      render :new and return
    end
  end

  def destroy
    house = House.find(params[:id])
    house.destroy
    redirect_to "/admin_houses"
  end

end
