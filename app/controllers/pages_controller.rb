class PagesController < ApplicationController
  def homepage

    if params["lat_lng"].present?
      @locations = Location.near(params["lat_lng"], 0.5)
    elsif params["geolocate_form"].present?
      lat = params["geolocate_form"]["lat"].to_f
      lng = params["geolocate_form"]["lng"].to_f
      @locations = Location.near([lat, lng], 0.5).all_bars
      @lat_lng = [lat, lng]
      else
      @locations = Location.near([40.7608, -111.8901], 1).all_bars
      @lat_lng = [40.7608, -111.8901]
    end
  end

  def geolocate

  end
end
