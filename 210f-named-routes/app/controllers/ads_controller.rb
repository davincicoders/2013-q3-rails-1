class AdsController < ApplicationController

  def root
    redirect_to list_ads_path and return
  end

  def list_ads
    @ads = Ad.all
    render :index and return
  end

  def show_ad
    @ad = Ad.find(params[:id])
    render :show and return
  end

  def new_ad
    @ad = Ad.new
    render :new and return
  end

  def edit_ad
    @ad = Ad.find(params[:id])
    render :edit and return
  end

  def new_ad_post
    @ad              = Ad.new
    @ad.company_name = params[:company_name]
    @ad.duration     = params[:duration]

    if @ad.save == true
      flash[:notice] = "Ad was successfully created."
      redirect_to show_ad_path(@ad)
    else
      render :new and return
    end
  end

  def edit_ad_post
    @ad              = Ad.find(params[:id])
    @ad.company_name = params[:company_name]
    @ad.duration     = params[:duration]

    if @ad.save == true
      flash[:notice] = "Ad was successfully updated."
      redirect_to show_ad_path(@ad)
    else
      render :edit and return
    end
  end

  def destroy_ad
    @ad = Ad.find(params[:id])
    @ad.destroy
    redirect_to list_ads_path and return
  end

end
