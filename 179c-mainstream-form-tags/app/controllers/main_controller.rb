class MainController < ApplicationController

  def root
    redirect_to "/login" and return
  end

  def login_get
    render :login and return
  end

  def login_post
    given_username = params[:username]
    given_password = params[:password]
  
    @member = Member.where(username: given_username).first
  
    if @member == nil
      @error = "Unknown username"
      render :login and return
    elsif given_password != @member.password
      @error = "Wrong password"
      render :login and return
    else
      session[:car_share_member_id] = @member.id
      redirect_to "/reservations/#{@member.id}" and return
    end
  end

  def reservations_get
    member_id = params[:member_id]
    @member = Member.find(member_id)
    @reserved_cars = Car.where(reserving_member_id: @member.id).all
    render :reservations and return
  end

  def reservations_post
    member_id = params[:member_id]
    member = Member.find(member_id)
  
    if params[:commit] == "Logout"
      redirect_to "/login" and return
    end
  
    Car.all.each do |car|
      if params[:commit] == "Return car #{car.id}"
        car.reserving_member_id = nil
        car.save!
      end
    end
  
    Car.all.each do |car|
      if params[:commit] == "Reserve car #{car.id}"
        car.reserving_member_id = member_id
        car.save!
      end
    end
  
    redirect_to "/reservations/#{member_id}" and return
  end

end
