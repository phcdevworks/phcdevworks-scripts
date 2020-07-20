class CreatePhcdevworksScriptsScriptAuthors < ActiveRecord::Migration[6.0]
  def change
    create_table :phcdevworks_scripts_script_authors do |t|

      t.string :script_author_first_name
      t.string :script_author_last_name
      t.string :script_author_website
      t.string :script_author_github

      t.string :slug
      t.string :user_id
      t.string :org_id

      t.timestamps

    end
  end
end
