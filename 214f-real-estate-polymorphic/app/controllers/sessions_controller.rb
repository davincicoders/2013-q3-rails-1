class SessionsController < ApplicationController

  def new
    render :new and return
  end

  def create
    username = params[:username]
    password = params[:password]
    admin    = Admin.where(username: username).first

    if admin == nil
      flash.now[:error] = "Unknown username"
      render :new and return
    elsif admin.authenticate(password) == false
      flash.now[:error] = "Wrong password"
      render :new and return
    else 
      session[:admin_id] = admin.id
      redirect_to admin_houses_path and return
    end
  end

  def destroy
    session.clear
    redirect_to new_session_path and return
  end

end
