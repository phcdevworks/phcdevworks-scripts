# This migration comes from phcdevworks_scripts (originally 20190818022024)
class CreatePhcdevworksScriptsSnippetUrls < ActiveRecord::Migration[6.0]
  def change
    create_table :phcdevworks_scripts_snippet_urls do |t|

      t.string :snippet_post_url

      t.string :slug
      t.string :user_id
      t.string :org_id

      t.references :post

      t.timestamps

    end
  end
end
