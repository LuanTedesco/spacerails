require "application_system_test_case"

class AliensTest < ApplicationSystemTestCase
  setup do
    @alien = aliens(:one)
  end

  test "visiting the index" do
    visit aliens_url
    assert_selector "h1", text: "Aliens"
  end

  test "should create alien" do
    visit aliens_url
    click_on "New alien"

    fill_in "Age", with: @alien.age
    fill_in "Name", with: @alien.name
    click_on "Create Alien"

    assert_text "Alien was successfully created"
    click_on "Back"
  end

  test "should update Alien" do
    visit alien_url(@alien)
    click_on "Edit this alien", match: :first

    fill_in "Age", with: @alien.age
    fill_in "Name", with: @alien.name
    click_on "Update Alien"

    assert_text "Alien was successfully updated"
    click_on "Back"
  end

  test "should destroy Alien" do
    visit alien_url(@alien)
    click_on "Destroy this alien", match: :first

    assert_text "Alien was successfully destroyed"
  end
end
