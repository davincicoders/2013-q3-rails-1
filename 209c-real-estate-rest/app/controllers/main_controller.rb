class MainController < ApplicationController

  def root
    redirect_to "/list_houses" and return
  end

  def list_houses
    @houses = House.order(:id)
    render :list_houses and return
  end

  def show_house
    @house = House.where(id: params[:id]).first
    render :show_house and return
  end

end
