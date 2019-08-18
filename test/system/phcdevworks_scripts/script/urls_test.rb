require "application_system_test_case"

module PhcdevworksScripts
  class Script::UrlsTest < ApplicationSystemTestCase
    setup do
      @script_url = phcdevworks_scripts_script_urls(:one)
    end

    test "visiting the index" do
      visit script_urls_url
      assert_selector "h1", text: "Script/Urls"
    end

    test "creating a Url" do
      visit script_urls_url
      click_on "New Script/Url"

      fill_in "Script cdn url", with: @script_url.script_cdn_url
      click_on "Create Url"

      assert_text "Url was successfully created"
      click_on "Back"
    end

    test "updating a Url" do
      visit script_urls_url
      click_on "Edit", match: :first

      fill_in "Script cdn url", with: @script_url.script_cdn_url
      click_on "Update Url"

      assert_text "Url was successfully updated"
      click_on "Back"
    end

    test "destroying a Url" do
      visit script_urls_url
      page.accept_confirm do
        click_on "Destroy", match: :first
      end

      assert_text "Url was successfully destroyed"
    end
  end
end
