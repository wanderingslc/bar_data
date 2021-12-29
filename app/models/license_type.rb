class LicenseType < ApplicationRecord
  has_rich_text :description
  validates_presence_of :code, :url, :name
  has_many :locations
end
