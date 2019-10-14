require "application_system_test_case"

module PhcdevworksScripts
  class Script::VersionsTest < ApplicationSystemTestCase
    setup do
      @script_version = phcdevworks_scripts_script_versions(:one)
    end

    test "visiting the index" do
      visit script_versions_url
      assert_selector "h1", text: "Script/Versions"
    end

    test "creating a Version" do
      visit script_versions_url
      click_on "New Script/Version"

      click_on "Create Version"

      assert_text "Version was successfully created"
      click_on "Back"
    end

    test "updating a Version" do
      visit script_versions_url
      click_on "Edit", match: :first

      click_on "Update Version"

      assert_text "Version was successfully updated"
      click_on "Back"
    end

    test "destroying a Version" do
      visit script_versions_url
      page.accept_confirm do
        click_on "Destroy", match: :first
      end

      assert_text "Version was successfully destroyed"
    end
  end
end
