class AdminController < ApplicationController

  before_filter except: ["login", "login_post", "logout"] do
    if session[:admin_id] != nil
      @admin = Admin.where(id: session[:admin_id]).first
    else
      flash[:error] = "You must be logged in to see that page."
      session[:attempted_path] = request.path_info
      redirect_to "/admin/login" and return
    end
  end

  def login
    render :login and return
  end

  def login_post
    username = params[:username]
    password = params[:password]
    admin    = Admin.where(username: username).first

    if admin == nil
      flash.now[:error] = "Unknown username"
      render :login and return
    elsif admin.authenticate(password) == false
      flash.now[:error] = "Wrong password"
      render :login and return
    else 
      session[:admin_id] = admin.id

      attempted_path = session[:attempted_path]
      if attempted_path != nil
        session[:attempted_path] = nil
        redirect_to attempted_path and return
      else
        redirect_to "/admin/houses" and return
      end
    end
  end

  def index
    @houses = House.order(:id)
    render :index and return
  end

  def index_post
    House.all.each do |house|
      if params[:commit] == "Delete house #{house.id}"
        house.destroy
      end
    end
    redirect_to "/admin/houses" and return
  end

  def edit
    @house = House.where(id: params[:id]).first
    render :edit and return
  end

  def edit_post
    @house                 = House.where(id: params[:id]).first
    @house.address         = params[:address]
    @house.city            = params[:city]
    @house.state           = params[:state]
    @house.price           = params[:price]
    @house.num_bedrooms    = params[:num_bedrooms]
    @house.num_stories     = params[:num_stories]
    @house.num_square_feet = params[:num_square_feet]
    @house.image_url       = params[:image_url]

    if @house.save
      redirect_to "/admin/houses" and return
    else
      render :edit and return
    end
  end

  def new
    @house = House.new
    render :new and return
  end

  def new_post
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
      redirect_to "/admin/houses" and return
    else
      render :new and return
    end
  end

  def logout
    session.clear
    redirect_to "/admin/login" and return
  end

end
