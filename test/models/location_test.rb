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
require "test_helper"

class LocationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
