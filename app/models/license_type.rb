# == Schema Information
#
# Table name: license_types
#
#  id            :bigint           not null, primary key
#  code          :string
#  url           :string
#  hours         :string
#  alcohol_types :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  liquor        :boolean          default(FALSE)
#  wine          :boolean          default(FALSE)
#  heavy_beer    :boolean          default(FALSE)
#  beer          :boolean          default(FALSE)
#  name          :string
#
class LicenseType < ApplicationRecord
  has_rich_text :description
  validates_presence_of :code, :url, :name
  validates :code, uniqueness: true
  has_many :locations
end
