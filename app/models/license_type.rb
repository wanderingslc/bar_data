class LicenseType < ApplicationRecord
  has_rich_text :description
  validates_presence_of :code, :url, :hours, :alcohol_types

  TYPES = [:liquor, :wine, :heavy_beer, :beer]
end
