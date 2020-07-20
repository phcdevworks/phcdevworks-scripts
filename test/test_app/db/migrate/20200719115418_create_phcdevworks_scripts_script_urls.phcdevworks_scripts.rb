# This migration comes from phcdevworks_scripts (originally 20190818023911)
class CreatePhcdevworksScriptsScriptUrls < ActiveRecord::Migration[6.0]
  def change
    create_table :phcdevworks_scripts_script_urls do |t|

      t.string :script_cdn_url
      t.date :script_cdn_url_release
      t.date :script_cdn_url_cdn_update

      t.string :slug
      t.string :user_id
      t.string :org_id

      t.references :listing
      t.references :extension
      t.references :version

      t.timestamps

    end
  end
end
