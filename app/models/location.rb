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
  # types of license types we want to look up
  # all beer
  scope :all_beer, -> {joins(:license_type).where(license_types: {beer: true})}
  # all heavy beer
  scope :all_heavy_beer, -> {joins(:license_type).where(license_types: {heavy_beer: true})}
  # all wine
   scope :all_wine, -> {joins(:license_type).where(license_types: {wine: true})}
  # all liquor
  scope :all_liquor, -> {joins(:license_type).where(license_types: {liquor: true})}
  # bars
  scope :cl_bars, -> {joins(:license_type).where(license_types: {code: "CL"})}
  scope :lb_bars, -> {joins(:license_type).where(license_types: {code: "LB"})}
  scope :tavern, -> {joins(:license_type).where(license_types: {code: "TV"})}
  scope :all_bars, -> {cl_bars.or(lb_bars)}

#   restaurants
  scope :full_service, -> {joins(:license_type).where(license_types: {code: "LR"})}
  scope :beer_only, -> {joins(:license_type).where(license_types: {code: "RB"})}
  scope :restaurant, -> {joins(:license_type).where(license_types: {code: "RE"})}
end
