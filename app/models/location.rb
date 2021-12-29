class Location < ApplicationRecord
  belongs_to :license_type
  has_rich_text :description
end
