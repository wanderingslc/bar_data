class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.string :name
      t.references :license_type, index: true, null: false, foreign_key: true
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :url
      t.string :images
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
