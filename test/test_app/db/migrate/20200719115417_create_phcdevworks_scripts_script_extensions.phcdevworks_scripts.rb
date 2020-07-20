# This migration comes from phcdevworks_scripts (originally 20190818023709)
class CreatePhcdevworksScriptsScriptExtensions < ActiveRecord::Migration[6.0]
  def change
    create_table :phcdevworks_scripts_script_extensions do |t|

      t.string :script_extension_name
      t.text :script_extension_description
      t.string :script_extension

      t.string :slug
      t.string :user_id
      t.string :org_id

      t.timestamps

    end
  end
end
