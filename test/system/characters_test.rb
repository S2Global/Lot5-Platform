require "application_system_test_case"

class CharactersTest < ApplicationSystemTestCase
  setup do
    @character = characters(:one)
  end

  test "visiting the index" do
    visit characters_url
    assert_selector "h1", text: "Characters"
  end

  test "creating a Character" do
    visit characters_url
    click_on "New Character"

    fill_in "Archetype", with: @character.archetype_id
    fill_in "Cp", with: @character.cp
    fill_in "Exp", with: @character.exp
    fill_in "Gp", with: @character.gp
    fill_in "Hp", with: @character.hp
    fill_in "Level", with: @character.level
    fill_in "Locx", with: @character.locX
    fill_in "Locy", with: @character.locY
    fill_in "Name", with: @character.name
    fill_in "Pp", with: @character.pp
    fill_in "Race", with: @character.race_id
    fill_in "Role", with: @character.role
    fill_in "Sp", with: @character.sp
    fill_in "User", with: @character.user_id
    click_on "Create Character"

    assert_text "Character was successfully created"
    click_on "Back"
  end

  test "updating a Character" do
    visit characters_url
    click_on "Edit", match: :first

    fill_in "Archetype", with: @character.archetype_id
    fill_in "Cp", with: @character.cp
    fill_in "Exp", with: @character.exp
    fill_in "Gp", with: @character.gp
    fill_in "Hp", with: @character.hp
    fill_in "Level", with: @character.level
    fill_in "Locx", with: @character.locX
    fill_in "Locy", with: @character.locY
    fill_in "Name", with: @character.name
    fill_in "Pp", with: @character.pp
    fill_in "Race", with: @character.race_id
    fill_in "Role", with: @character.role
    fill_in "Sp", with: @character.sp
    fill_in "User", with: @character.user_id
    click_on "Update Character"

    assert_text "Character was successfully updated"
    click_on "Back"
  end

  test "destroying a Character" do
    visit characters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Character was successfully destroyed"
  end
end
