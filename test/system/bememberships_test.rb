require "application_system_test_case"

class BemembershipsTest < ApplicationSystemTestCase
  setup do
    @bemembership = bememberships(:one)
  end

  test "visiting the index" do
    visit bememberships_url
    assert_selector "h1", text: "Bememberships"
  end

  test "should create bemembership" do
    visit bememberships_url
    click_on "New bemembership"

    fill_in "Citytown", with: @bemembership.citytown
    fill_in "Contact", with: @bemembership.contact
    fill_in "Country", with: @bemembership.country
    fill_in "Email", with: @bemembership.email
    fill_in "Employer", with: @bemembership.employer
    fill_in "First name", with: @bemembership.first_name
    check "Gender" if @bemembership.gender
    fill_in "Last name", with: @bemembership.last_name
    fill_in "Matrimonial", with: @bemembership.matrimonial
    fill_in "Nationality", with: @bemembership.nationality
    fill_in "Professeion", with: @bemembership.professeion
    fill_in "Source", with: @bemembership.source
    fill_in "Terms", with: @bemembership.terms
    click_on "Create Bemembership"

    assert_text "Bemembership was successfully created"
    click_on "Back"
  end

  test "should update Bemembership" do
    visit bemembership_url(@bemembership)
    click_on "Edit this bemembership", match: :first

    fill_in "Citytown", with: @bemembership.citytown
    fill_in "Contact", with: @bemembership.contact
    fill_in "Country", with: @bemembership.country
    fill_in "Email", with: @bemembership.email
    fill_in "Employer", with: @bemembership.employer
    fill_in "First name", with: @bemembership.first_name
    check "Gender" if @bemembership.gender
    fill_in "Last name", with: @bemembership.last_name
    fill_in "Matrimonial", with: @bemembership.matrimonial
    fill_in "Nationality", with: @bemembership.nationality
    fill_in "Professeion", with: @bemembership.professeion
    fill_in "Source", with: @bemembership.source
    fill_in "Terms", with: @bemembership.terms
    click_on "Update Bemembership"

    assert_text "Bemembership was successfully updated"
    click_on "Back"
  end

  test "should destroy Bemembership" do
    visit bemembership_url(@bemembership)
    click_on "Destroy this bemembership", match: :first

    assert_text "Bemembership was successfully destroyed"
  end
end
