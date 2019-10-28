class CreatePhcdevworksScriptsScriptVersions < ActiveRecord::Migration[6.0]
  def change
    create_table :phcdevworks_scripts_script_versions do |t|

      t.string :version_number

      t.string :slug
      t.string :user_id
      t.string :org_id

      t.timestamps

    end
  end
end
