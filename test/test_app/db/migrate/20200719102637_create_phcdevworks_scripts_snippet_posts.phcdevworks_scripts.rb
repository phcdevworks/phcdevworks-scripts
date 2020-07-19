# This migration comes from phcdevworks_scripts (originally 20190818022002)
class CreatePhcdevworksScriptsSnippetPosts < ActiveRecord::Migration[6.0]
  def change
    create_table :phcdevworks_scripts_snippet_posts do |t|

      t.string :snippet_title
      t.text :snippet_code

      t.string :optimization_id

      t.string :slug
      t.string :user_id
      t.string :org_id

      t.timestamps

    end
  end
end
