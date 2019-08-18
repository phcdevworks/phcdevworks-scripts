class CreatePhcdevworksScriptsScriptListings < ActiveRecord::Migration[6.0]
  def change
    create_table :phcdevworks_scripts_script_listings do |t|

      t.string :listing_title
      t.string :listing_description
      t.string :listing_script_source
      t.string :listing_script_website
      t.string :listing_script_repo
      t.string :listing_script_status

      t.date :listing_script_initial_release
      t.date :listing_script_lastest_release
      t.date :listing_script_beta_release
      t.date :listing_script_lastest_release_cdn

      t.string :slug
      t.string :user_id
      t.string :org_id

      t.timestamps

    end
  end
end
