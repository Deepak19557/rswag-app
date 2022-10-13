require "application_system_test_case"

class Api::V1::PetsTest < ApplicationSystemTestCase
  setup do
    @api_v1_pet = api_v1_pets(:one)
  end

  test "visiting the index" do
    visit api_v1_pets_url
    assert_selector "h1", text: "Api/V1/Pets"
  end

  test "creating a Pet" do
    visit api_v1_pets_url
    click_on "New Api/V1/Pet"

    click_on "Create Pet"

    assert_text "Pet was successfully created"
    click_on "Back"
  end

  test "updating a Pet" do
    visit api_v1_pets_url
    click_on "Edit", match: :first

    click_on "Update Pet"

    assert_text "Pet was successfully updated"
    click_on "Back"
  end

  test "destroying a Pet" do
    visit api_v1_pets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pet was successfully destroyed"
  end
end
