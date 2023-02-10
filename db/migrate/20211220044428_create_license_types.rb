class CreateLicenseTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :license_types do |t|
      t.string :code
      t.string :url
      t.string :hours
      t.string :alcohol_types

      t.timestamps
    end
  end
end
