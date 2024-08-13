require "application_system_test_case"

class SailorsTest < ApplicationSystemTestCase
  setup do
    @sailor = sailors(:one)
  end

  test "visiting the index" do
    visit sailors_url
    assert_selector "h1", text: "Sailors"
  end

  test "should create sailor" do
    visit sailors_url
    click_on "New sailor"

    fill_in "Hometown", with: @sailor.hometown
    fill_in "Name", with: @sailor.name
    fill_in "Sail number", with: @sailor.sail_number
    click_on "Create Sailor"

    assert_text "Sailor was successfully created"
    click_on "Back"
  end

  test "should update Sailor" do
    visit sailor_url(@sailor)
    click_on "Edit this sailor", match: :first

    fill_in "Hometown", with: @sailor.hometown
    fill_in "Name", with: @sailor.name
    fill_in "Sail number", with: @sailor.sail_number
    click_on "Update Sailor"

    assert_text "Sailor was successfully updated"
    click_on "Back"
  end

  test "should destroy Sailor" do
    visit sailor_url(@sailor)
    click_on "Destroy this sailor", match: :first

    assert_text "Sailor was successfully destroyed"
  end
end
