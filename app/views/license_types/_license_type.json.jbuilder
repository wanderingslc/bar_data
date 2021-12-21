json.extract! license_type, :id, :code, :description, :url, :hours, :alcohol_types, :created_at, :updated_at
json.url license_type_url(license_type, format: :json)
json.description license_type.description.to_s
