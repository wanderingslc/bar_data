class PagesController < ApplicationController


  def homepage

    if params["lat_lng"].present?
      @pagy, @locations = pagy(Location.near(params["lat_lng"], 0.5))
    elsif params["geolocate_form"].present?
      lat = params["geolocate_form"]["lat"].to_f
      lng = params["geolocate_form"]["lng"].to_f
      distance = params["geolocate_form"]["distance"].to_f
      @pagy, @locations = pagy(Location.near([lat, lng], distance).all_bars)
      @lat_lng = "#{lat}, #{lng}"
    elsif  params.dig("geo_info", "address").present?

      address = params["geo_info"]["address"]
      city = params["geo_info"]["city"]
      state = params["geo_info"]["state"]
      zip = params["geo_info"]["zip"]
      @pagy, @locations = pagy(Location.near([address, city, state, zip], 1).all_bars)
    else
      @pagy, @locations = pagy(Location.near([40.7608, -111.8901], 1).all_bars)
      @lat_lng = "40.7608, -111.8901"
    end
  end

  def geolocate

  end
end
