class RealEstateController < ApplicationController

  def root
    redirect_to "/view_properties" and return
  end

  def view_properties
    @title = "Welcome to our site"
    @properties = Property.order("id")
    render :view_properties and return
  end

  def view_property
    @property = Property.where(id: params["id"]).first
    @title = "#{@property.address}, #{@property.city}, CO"
    render :view_property and return
  end

end
