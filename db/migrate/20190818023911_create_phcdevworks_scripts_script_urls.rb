class CreatePhcdevworksScriptsScriptUrls < ActiveRecord::Migration[6.0]
  def change
    create_table :phcdevworks_scripts_script_urls do |t|

      t.string :script_cdn_url

      t.string :slug
      t.string :user_id
      t.string :org_id

      t.timestamps

    end
  end
end
