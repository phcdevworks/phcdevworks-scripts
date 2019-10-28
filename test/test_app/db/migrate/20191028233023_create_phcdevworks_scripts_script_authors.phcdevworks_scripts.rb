# This migration comes from phcdevworks_scripts (originally 20190818022939)
class CreatePhcdevworksScriptsScriptAuthors < ActiveRecord::Migration[6.0]
  def change
    create_table :phcdevworks_scripts_script_authors do |t|

      t.string :author_first_name
      t.string :author_last_name
      t.string :author_website
      t.string :author_github

      t.string :slug
      t.string :user_id
      t.string :org_id
      
      t.timestamps

    end
  end
end
