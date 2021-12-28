class LicenseType < ApplicationRecord
  has_rich_text :description
  validates_presence_of :code, :url, :name

end
