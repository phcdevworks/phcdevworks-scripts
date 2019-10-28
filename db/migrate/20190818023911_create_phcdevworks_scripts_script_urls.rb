class CreatePhcdevworksScriptsScriptUrls < ActiveRecord::Migration[6.0]
  def change
    create_table :phcdevworks_scripts_script_urls do |t|

      t.string :cdn_url
      t.date :cdn_url_release
      t.date :cdn_url_cdn_update

      t.references :listing
      t.references :extension
      t.references :version

      t.string :slug
      t.string :user_id
      t.string :org_id

      t.timestamps

    end
  end
end
