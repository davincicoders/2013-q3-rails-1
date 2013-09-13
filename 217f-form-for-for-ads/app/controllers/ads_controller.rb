class AdsController < ApplicationController

  def root
    redirect_to ads_path and return
  end

  def index
    @ads = Ad.all
    render :index and return
  end

  def show
    @ad = Ad.find(params[:id])
    render :show and return
  end

  def new
    @ad = Ad.new
    render :new and return
  end

  def edit
    @ad = Ad.find(params[:id])
    render :edit and return
  end

  def create
    ad_params = params[:ad].permit(:company_name, :duration)
    @ad       = Ad.new(ad_params)

    if @ad.save == true
      flash[:notice] = "Ad was successfully created."
      redirect_to @ad
    else
      render :new and return
    end
  end

  def update
    ad_params = params[:ad].permit(:company_name, :duration)
    @ad = Ad.find(params[:id])

    if @ad.update(ad_params) == true
      flash[:notice] = "Ad was successfully updated."
      redirect_to @ad
    else
      render :edit and return
    end
  end

  def destroy
    @ad = Ad.find(params[:id])
    @ad.destroy
    redirect_to ads_path and return
  end

end
