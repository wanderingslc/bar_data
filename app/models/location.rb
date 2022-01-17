# == Schema Information
#
# Table name: locations
#
#  id              :bigint           not null, primary key
#  name            :string
#  license_type_id :bigint           not null
#  address         :string
#  city            :string
#  state           :string
#  zip             :string
#  phone           :string
#  url             :string
#  images          :string
#  latitude        :float
#  longitude       :float
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  license         :string           not null
#
class Location < ApplicationRecord
  belongs_to :license_type
  has_rich_text :description
  geocoded_by :street_address
  reverse_geocoded_by :latitude, :longitude

  def street_address
    "#{address}, #{city}, #{state}, #{zip}"
  end


end
