class CreatePhcdevworksScriptsScriptExtensions < ActiveRecord::Migration[6.0]
  def change
    create_table :phcdevworks_scripts_script_extensions do |t|

      t.string :extension_name
      t.text :extension_description
      t.string :extension

      t.string :slug
      t.string :user_id
      t.string :org_id

      t.timestamps

    end
  end
end
