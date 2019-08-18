require "application_system_test_case"

module PhcdevworksScripts
  class Script::AuthorsTest < ApplicationSystemTestCase
    setup do
      @script_author = phcdevworks_scripts_script_authors(:one)
    end

    test "visiting the index" do
      visit script_authors_url
      assert_selector "h1", text: "Script/Authors"
    end

    test "creating a Author" do
      visit script_authors_url
      click_on "New Script/Author"

      fill_in "Author first name", with: @script_author.author_first_name
      fill_in "Author github", with: @script_author.author_github
      fill_in "Author last name", with: @script_author.author_last_name
      fill_in "Author website", with: @script_author.author_website
      click_on "Create Author"

      assert_text "Author was successfully created"
      click_on "Back"
    end

    test "updating a Author" do
      visit script_authors_url
      click_on "Edit", match: :first

      fill_in "Author first name", with: @script_author.author_first_name
      fill_in "Author github", with: @script_author.author_github
      fill_in "Author last name", with: @script_author.author_last_name
      fill_in "Author website", with: @script_author.author_website
      click_on "Update Author"

      assert_text "Author was successfully updated"
      click_on "Back"
    end

    test "destroying a Author" do
      visit script_authors_url
      page.accept_confirm do
        click_on "Destroy", match: :first
      end

      assert_text "Author was successfully destroyed"
    end
  end
end
