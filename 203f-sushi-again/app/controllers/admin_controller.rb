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
        redirect_to "/admin/main_menu" and return
      end
    end
  end

  def logout
    session.clear
    redirect_to "/admin/login" and return
  end

  def orders
    @orders = Order.order(:id).all
    render :orders and return
  end
  
  def dishes
    @dishes = Dish.order(:id).all
    render :dishes and return
  end

end
