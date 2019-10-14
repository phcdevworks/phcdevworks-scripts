require "application_system_test_case"

module PhcdevworksScripts
  class Script::ExtensionsTest < ApplicationSystemTestCase
    setup do
      @script_extension = phcdevworks_scripts_script_extensions(:one)
    end

    test "visiting the index" do
      visit script_extensions_url
      assert_selector "h1", text: "Script/Extensions"
    end

    test "creating a Extension" do
      visit script_extensions_url
      click_on "New Script/Extension"

      click_on "Create Extension"

      assert_text "Extension was successfully created"
      click_on "Back"
    end

    test "updating a Extension" do
      visit script_extensions_url
      click_on "Edit", match: :first

      click_on "Update Extension"

      assert_text "Extension was successfully updated"
      click_on "Back"
    end

    test "destroying a Extension" do
      visit script_extensions_url
      page.accept_confirm do
        click_on "Destroy", match: :first
      end

      assert_text "Extension was successfully destroyed"
    end
  end
end
