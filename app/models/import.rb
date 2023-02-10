require 'roo-xls'
require 'pry'
class Import < ApplicationRecord

  def self.find_license(abbr)
    id = LicenseType.find_by code: abbr
    if id.nil?
      binding.pry
    end
    id.id
  end

  def self.import(file)
    license_types = %w{AL BR HC LR MD MW RB RS TB AR BW HL LT MO OP RC SA TV BC CL IN LW MP PA RE SC BE HA LB MB MR PS RL SE}.freeze
    @parsed_xlsx = Array.new
    xlsx = Roo::Spreadsheet.open(file)
    xlsx.sheet('Sheet1').each do |location|
      next if location[0].nil?
      next unless license_types.include? location[0].slice(0,2)
      location.compact!
      license_id = find_license(location[0].slice(0,2))
      Location.find_or_create_by({license: location[0],
                         name: location[1],
                         address: location[2],
                         city: location[3],
                         state: location[4],
                         zip: location[5],
                         phone: location[6],
                         license_type_id:  license_id})
    end

  end


end