class AddsNameToLiquorLicecense < ActiveRecord::Migration[6.1]
  def change
    add_column :license_types, :name, :string
  end
end
