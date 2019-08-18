require "application_system_test_case"

module PhcdevworksScripts
  class Snippet::UrlsTest < ApplicationSystemTestCase
    setup do
      @snippet_url = phcdevworks_scripts_snippet_urls(:one)
    end

    test "visiting the index" do
      visit snippet_urls_url
      assert_selector "h1", text: "Snippet/Urls"
    end

    test "creating a Url" do
      visit snippet_urls_url
      click_on "New Snippet/Url"

      fill_in "Script url", with: @snippet_url.script_url
      click_on "Create Url"

      assert_text "Url was successfully created"
      click_on "Back"
    end

    test "updating a Url" do
      visit snippet_urls_url
      click_on "Edit", match: :first

      fill_in "Script url", with: @snippet_url.script_url
      click_on "Update Url"

      assert_text "Url was successfully updated"
      click_on "Back"
    end

    test "destroying a Url" do
      visit snippet_urls_url
      page.accept_confirm do
        click_on "Destroy", match: :first
      end

      assert_text "Url was successfully destroyed"
    end
  end
end
