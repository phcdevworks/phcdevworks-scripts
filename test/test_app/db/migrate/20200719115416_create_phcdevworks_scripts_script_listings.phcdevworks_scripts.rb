# This migration comes from phcdevworks_scripts (originally 20190818023353)
class CreatePhcdevworksScriptsScriptListings < ActiveRecord::Migration[6.0]
  def change
    create_table :phcdevworks_scripts_script_listings do |t|

      t.string :script_listing_title
      t.text :script_listing_description
      t.string :script_listing_script_source
      t.string :script_listing_script_website
      t.string :script_listing_script_repo
      t.string :script_listing_script_status

      t.date :script_listing_script_initial_release
      t.date :script_listing_script_lastest_release
      t.date :script_listing_script_beta_release
      t.date :script_listing_script_lastest_release_cdn

      t.string :optimization_id

      t.string :slug
      t.string :user_id
      t.string :org_id

      t.references :author

      t.timestamps

    end
  end
end
