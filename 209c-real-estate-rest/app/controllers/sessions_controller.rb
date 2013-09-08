class SessionsController < ApplicationController

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
      redirect_to "/admin/list_houses" and return
    end
  end

  def logout
    session.clear
    redirect_to "/sessions/login" and return
  end

end
