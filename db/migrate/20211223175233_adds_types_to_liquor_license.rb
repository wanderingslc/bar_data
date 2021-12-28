class AddsTypesToLiquorLicense < ActiveRecord::Migration[6.1]
  def change
    add_column :license_types, :liquor,:boolean, default: false
    add_column :license_types, :wine, :boolean, default: false
    add_column :license_types, :heavy_beer, :boolean, default: false
    add_column :license_types, :beer, :boolean, default: false
  end
end
