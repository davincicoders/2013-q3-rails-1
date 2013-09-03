class AdminController < ApplicationController

  before_filter(except: ["login", "login_post", "logout"]) do
    if session[:property_admin_id] != nil
      @admin = PropertyAdmin.where(id: session[:property_admin_id]).first
    else
      flash[:error] = "You must be logged in to see that page."
      redirect_to "/admin_login" and return
    end
  end

  def login
    @title = "Login"
    render :login and return
  end

  def login_post
    username = params[:username]
    password = params[:password]
    admin = PropertyAdmin.where(username: username).first

    if admin == nil
      @title = "Login"
      flash.now[:error] = "Unknown username"
      render :login and return
    elsif admin.authenticate(password) == false
      @title = "Login"
      flash.now[:error] = "Wrong password"
      render :login and return
    else 
      session[:property_admin_id] = admin.id
      redirect_to "/edit_properties" and return
    end
  end

  def edit_properties
    @title = "Properties"
    @properties = Property.order("id")
    render :edit_properties and return
  end

  def edit_property
    @title = "Edit property"
    @property = Property.where(id: params["id"]).first
    render :edit_property and return
  end

  def edit_property_post
    @property = Property.where(id: params["id"]).first
    @property.address         = params["address"]
    @property.city            = params["city"]
    @property.state           = params["state"]
    @property.price           = params["price"]
    @property.num_bedrooms    = params["num_bedrooms"]
    @property.num_stories     = params["num_stories"]
    @property.num_square_feet = params["num_square_feet"]
    @property.image_url       = params["image_url"]

    if @property.save
      redirect_to "/edit_properties" and return
    else
      render :edit_property and return
    end
  end

  def add_new_property
    @property = Property.new
    render :add_new_property and return
  end

  def create_property
    @property = Property.new
    @property.address         = params["address"]
    @property.city            = params["city"]
    @property.state           = params["state"]
    @property.price           = params["price"]
    @property.num_bedrooms    = params["num_bedrooms"]
    @property.num_stories     = params["num_stories"]
    @property.num_square_feet = params["num_square_feet"]
    @property.image_url       = params["image_url"]

    if @property.save
      redirect_to "/edit_properties" and return
    else
      render :add_new_property and return
    end
  end

  def delete_property
    @property = Property.where(id: params["id"]).first
    @property.destroy
    redirect_to "/edit_properties" and return
  end

  def logout
    session.clear
    redirect_to "/admin_login" and return
  end

end
