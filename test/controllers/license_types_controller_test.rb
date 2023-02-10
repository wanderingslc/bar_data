require "test_helper"

class LicenseTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @license_type = license_types(:one)
  end

  test "should get index" do
    get license_types_url
    assert_response :success
  end

  test "should get new" do
    get new_license_type_url
    assert_response :success
  end

  test "should create license_type" do
    assert_difference('LicenseType.count') do
      post license_types_url, params: { license_type: { alcohol_types: @license_type.alcohol_types, code: @license_type.code, hours: @license_type.hours, url: @license_type.url } }
    end

    assert_redirected_to license_type_url(LicenseType.last)
  end

  test "should show license_type" do
    get license_type_url(@license_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_license_type_url(@license_type)
    assert_response :success
  end

  test "should update license_type" do
    patch license_type_url(@license_type), params: { license_type: { alcohol_types: @license_type.alcohol_types, code: @license_type.code, hours: @license_type.hours, url: @license_type.url } }
    assert_redirected_to license_type_url(@license_type)
  end

  test "should destroy license_type" do
    assert_difference('LicenseType.count', -1) do
      delete license_type_url(@license_type)
    end

    assert_redirected_to license_types_url
  end
end
