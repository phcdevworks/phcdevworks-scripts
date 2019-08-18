require 'test_helper'

module PhcdevworksScripts
  class Script::ListingsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @script_listing = phcdevworks_scripts_script_listings(:one)
    end

    test "should get index" do
      get script_listings_url
      assert_response :success
    end

    test "should get new" do
      get new_script_listing_url
      assert_response :success
    end

    test "should create script_listing" do
      assert_difference('Script::Listing.count') do
        post script_listings_url, params: { script_listing: { listing_description: @script_listing.listing_description, listing_script_beta_release: @script_listing.listing_script_beta_release, listing_script_initial_release: @script_listing.listing_script_initial_release, listing_script_lastest_release: @script_listing.listing_script_lastest_release, listing_script_lastest_release_cdn: @script_listing.listing_script_lastest_release_cdn, listing_script_repo: @script_listing.listing_script_repo, listing_script_source: @script_listing.listing_script_source, listing_script_status: @script_listing.listing_script_status, listing_script_website: @script_listing.listing_script_website, listing_title: @script_listing.listing_title } }
      end

      assert_redirected_to script_listing_url(Script::Listing.last)
    end

    test "should show script_listing" do
      get script_listing_url(@script_listing)
      assert_response :success
    end

    test "should get edit" do
      get edit_script_listing_url(@script_listing)
      assert_response :success
    end

    test "should update script_listing" do
      patch script_listing_url(@script_listing), params: { script_listing: { listing_description: @script_listing.listing_description, listing_script_beta_release: @script_listing.listing_script_beta_release, listing_script_initial_release: @script_listing.listing_script_initial_release, listing_script_lastest_release: @script_listing.listing_script_lastest_release, listing_script_lastest_release_cdn: @script_listing.listing_script_lastest_release_cdn, listing_script_repo: @script_listing.listing_script_repo, listing_script_source: @script_listing.listing_script_source, listing_script_status: @script_listing.listing_script_status, listing_script_website: @script_listing.listing_script_website, listing_title: @script_listing.listing_title } }
      assert_redirected_to script_listing_url(@script_listing)
    end

    test "should destroy script_listing" do
      assert_difference('Script::Listing.count', -1) do
        delete script_listing_url(@script_listing)
      end

      assert_redirected_to script_listings_url
    end
  end
end
