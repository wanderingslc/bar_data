class AddIndexToLicenseTypeCode < ActiveRecord::Migration[7.0]
  def change
    change_table :license_types do |t|
      t.index :code, unique: true
    end
  end
end
