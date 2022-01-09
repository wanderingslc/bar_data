class AddLicenseToLocations < ActiveRecord::Migration[6.1]
  def change
    add_column :locations, :license, :string, null: false
    add_index :locations, :license, unique: true
  end
end
