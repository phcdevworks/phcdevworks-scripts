# This migration comes from phcdevworks_scripts (originally 20190818031653)
class CreatePhcdevworksScriptsScriptVersions < ActiveRecord::Migration[6.0]
  def change
    create_table :phcdevworks_scripts_script_versions do |t|

      t.string :script_version_number

      t.string :slug
      t.string :user_id
      t.string :org_id

      t.timestamps

    end
  end
end
