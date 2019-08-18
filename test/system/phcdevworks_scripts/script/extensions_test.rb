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

      fill_in "Script extension", with: @script_extension.script_extension
      fill_in "Script extension description", with: @script_extension.script_extension_description
      fill_in "Script extension name", with: @script_extension.script_extension_name
      click_on "Create Extension"

      assert_text "Extension was successfully created"
      click_on "Back"
    end

    test "updating a Extension" do
      visit script_extensions_url
      click_on "Edit", match: :first

      fill_in "Script extension", with: @script_extension.script_extension
      fill_in "Script extension description", with: @script_extension.script_extension_description
      fill_in "Script extension name", with: @script_extension.script_extension_name
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
