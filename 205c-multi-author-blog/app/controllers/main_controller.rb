class MainController < ApplicationController
  before_filter do
    if session[:author_id] != nil
      @author = Author.find(session[:author_id])
    end
  end

  before_filter except: ["index", "login", "login_post", "logout"] do
    if @author == nil
      flash[:error] = "You must be logged in to view that page"
      session[:original_route] = request.path_info
      redirect_to "/login" and return
    end
  end

  def index
    render :index and return
  end

  def login
    render :login and return
  end

  def login_post
    username = params["username"]
    password = params["password"]

    author = Author.where(username: username).first
    if author == nil
      flash[:error] = "Incorrect username"
      redirect_to "/login" and return
    elsif author.authenticate(password) == false
      flash[:error] = "Incorrect password"
      redirect_to "/login" and return
    else
      session[:author_id] = author.id

      original_route = session[:original_route]
      if original_route != nil
        session[:original_route] = nil
        redirect_to original_route and return
      else
        redirect_to "/" and return
      end
    end
  end

  def logout
    session.clear
    redirect_to "/" and return
  end
end
