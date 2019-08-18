require "application_system_test_case"

module PhcdevworksScripts
  class Script::ListingsTest < ApplicationSystemTestCase
    setup do
      @script_listing = phcdevworks_scripts_script_listings(:one)
    end

    test "visiting the index" do
      visit script_listings_url
      assert_selector "h1", text: "Script/Listings"
    end

    test "creating a Listing" do
      visit script_listings_url
      click_on "New Script/Listing"

      fill_in "Listing description", with: @script_listing.listing_description
      fill_in "Listing script beta release", with: @script_listing.listing_script_beta_release
      fill_in "Listing script initial release", with: @script_listing.listing_script_initial_release
      fill_in "Listing script lastest release", with: @script_listing.listing_script_lastest_release
      fill_in "Listing script lastest release cdn", with: @script_listing.listing_script_lastest_release_cdn
      fill_in "Listing script repo", with: @script_listing.listing_script_repo
      fill_in "Listing script source", with: @script_listing.listing_script_source
      fill_in "Listing script status", with: @script_listing.listing_script_status
      fill_in "Listing script website", with: @script_listing.listing_script_website
      fill_in "Listing title", with: @script_listing.listing_title
      click_on "Create Listing"

      assert_text "Listing was successfully created"
      click_on "Back"
    end

    test "updating a Listing" do
      visit script_listings_url
      click_on "Edit", match: :first

      fill_in "Listing description", with: @script_listing.listing_description
      fill_in "Listing script beta release", with: @script_listing.listing_script_beta_release
      fill_in "Listing script initial release", with: @script_listing.listing_script_initial_release
      fill_in "Listing script lastest release", with: @script_listing.listing_script_lastest_release
      fill_in "Listing script lastest release cdn", with: @script_listing.listing_script_lastest_release_cdn
      fill_in "Listing script repo", with: @script_listing.listing_script_repo
      fill_in "Listing script source", with: @script_listing.listing_script_source
      fill_in "Listing script status", with: @script_listing.listing_script_status
      fill_in "Listing script website", with: @script_listing.listing_script_website
      fill_in "Listing title", with: @script_listing.listing_title
      click_on "Update Listing"

      assert_text "Listing was successfully updated"
      click_on "Back"
    end

    test "destroying a Listing" do
      visit script_listings_url
      page.accept_confirm do
        click_on "Destroy", match: :first
      end

      assert_text "Listing was successfully destroyed"
    end
  end
end
