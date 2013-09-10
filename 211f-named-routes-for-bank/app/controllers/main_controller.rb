class MainController < ApplicationController

  def root
    redirect_to login_path and return
  end

  def login
    render :login and return
  end

  def login_post
    username = params[:username]
    password = params[:password]

    found_user = User.where(username: username).first

    if found_user == nil
      @error = "Incorrect username"
      render :login and return
    elsif found_user.authenticate(password) == false
      @error = "Incorrect password"
      render :login and return
    else
      session[:user_id] = found_user.id
      redirect_to accounts_path and return
    end
  end

  def accounts
    @user = User.where(id: session[:user_id]).first
    render :accounts and return
  end

  def location
    @user = User.where(id: session[:user_id]).first
    render :location and return
  end

  def rates
    @user = User.where(id: session[:user_id]).first
    render :rates and return
  end

  def logout
    session.clear
    redirect_to login_path and return
  end

end
