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
require "test_helper"

class LicenseTypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
