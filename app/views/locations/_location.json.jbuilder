json.extract! location, :id, :name, :license_type_id, :address, :city, :state, :zip, :phone, :url, :images, :latitude, :longitude, :description, :created_at, :updated_at
json.url location_url(location, format: :json)
json.description location.description.to_s
