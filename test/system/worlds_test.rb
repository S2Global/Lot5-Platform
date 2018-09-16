require "application_system_test_case"

class WorldsTest < ApplicationSystemTestCase
  setup do
    @world = worlds(:one)
  end

  test "visiting the index" do
    visit worlds_url
    assert_selector "h1", text: "Worlds"
  end

  test "creating a World" do
    visit worlds_url
    click_on "New World"

    fill_in "Description", with: @world.description
    fill_in "User", with: @world.user_id
    click_on "Create World"

    assert_text "World was successfully created"
    click_on "Back"
  end

  test "updating a World" do
    visit worlds_url
    click_on "Edit", match: :first

    fill_in "Description", with: @world.description
    fill_in "User", with: @world.user_id
    click_on "Update World"

    assert_text "World was successfully updated"
    click_on "Back"
  end

  test "destroying a World" do
    visit worlds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "World was successfully destroyed"
  end
end
