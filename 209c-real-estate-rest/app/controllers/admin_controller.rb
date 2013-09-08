class AdminController < ApplicationController

  before_filter do
    if session[:admin_id] != nil
      @admin = Admin.where(id: session[:admin_id]).first
    else
      flash[:error] = "You must be logged in to see that page."
      redirect_to "/sessions/login" and return
    end
  end

  def list_houses
    @houses = House.order(:id)
    render :list_houses and return
  end

  def edit_house
    @house = House.where(id: params[:id]).first
    render :edit_house and return
  end

  def edit_house_post
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
      redirect_to "/admin/list_houses" and return
    else
      render :edit_house and return
    end
  end

  def new_house
    @house = House.new
    render :new_house and return
  end

  def new_house_post
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
      redirect_to "/admin/list_houses" and return
    else
      render :new_house and return
    end
  end

  def delete_house
    house = House.find(params[:id])
    house.destroy
    redirect_to "/admin/list_houses"
  end

end
