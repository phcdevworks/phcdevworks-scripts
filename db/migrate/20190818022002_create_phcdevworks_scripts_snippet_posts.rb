class CreatePhcdevworksScriptsSnippetPosts < ActiveRecord::Migration[6.0]
  def change
    create_table :phcdevworks_scripts_snippet_posts do |t|

      t.string :snippet_post_title
      t.text :snippet_post_code

      t.string :optimization_id

      t.string :slug
      t.string :user_id
      t.string :org_id

      t.timestamps

    end
  end
end
