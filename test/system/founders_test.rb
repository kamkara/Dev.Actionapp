require "application_system_test_case"

class FoundersTest < ApplicationSystemTestCase
  setup do
    @founder = founders(:one)
  end

  test "visiting the index" do
    visit founders_url
    assert_selector "h1", text: "Founders"
  end

  test "should create founder" do
    visit founders_url
    click_on "New founder"

    fill_in "Slug", with: @founder.slug
    fill_in "Title", with: @founder.title
    fill_in "User", with: @founder.user_id
    click_on "Create Founder"

    assert_text "Founder was successfully created"
    click_on "Back"
  end

  test "should update Founder" do
    visit founder_url(@founder)
    click_on "Edit this founder", match: :first

    fill_in "Slug", with: @founder.slug
    fill_in "Title", with: @founder.title
    fill_in "User", with: @founder.user_id
    click_on "Update Founder"

    assert_text "Founder was successfully updated"
    click_on "Back"
  end

  test "should destroy Founder" do
    visit founder_url(@founder)
    click_on "Destroy this founder", match: :first

    assert_text "Founder was successfully destroyed"
  end
end
