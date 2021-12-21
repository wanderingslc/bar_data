require "application_system_test_case"

class LicenseTypesTest < ApplicationSystemTestCase
  setup do
    @license_type = license_types(:one)
  end

  test "visiting the index" do
    visit license_types_url
    assert_selector "h1", text: "License Types"
  end

  test "creating a License type" do
    visit license_types_url
    click_on "New License Type"

    fill_in "Alcohol types", with: @license_type.alcohol_types
    fill_in "Code", with: @license_type.code
    fill_in "Hours", with: @license_type.hours
    fill_in "Url", with: @license_type.url
    click_on "Create License type"

    assert_text "License type was successfully created"
    click_on "Back"
  end

  test "updating a License type" do
    visit license_types_url
    click_on "Edit", match: :first

    fill_in "Alcohol types", with: @license_type.alcohol_types
    fill_in "Code", with: @license_type.code
    fill_in "Hours", with: @license_type.hours
    fill_in "Url", with: @license_type.url
    click_on "Update License type"

    assert_text "License type was successfully updated"
    click_on "Back"
  end

  test "destroying a License type" do
    visit license_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "License type was successfully destroyed"
  end
end
