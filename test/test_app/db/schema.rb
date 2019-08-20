# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_08_19_235543) do

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_type", "sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_type_and_sluggable_id"
  end

  create_table "phcdevworks_scripts_author_versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", limit: 1073741823
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "scriptcdnpro_author_versions"
  end

  create_table "phcdevworks_scripts_extension_versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", limit: 1073741823
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "scriptcdnpro_ext_versions"
  end

  create_table "phcdevworks_scripts_friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "scriptcdnpro_fri_id_slugable_scope_type", unique: true
    t.index ["slug", "sluggable_type"], name: "scriptcdnpro_fri_id_slugable_type"
    t.index ["sluggable_id"], name: "index_phcdevworks_scripts_friendly_id_slugs_on_sluggable_id"
    t.index ["sluggable_type"], name: "index_phcdevworks_scripts_friendly_id_slugs_on_sluggable_type"
  end

  create_table "phcdevworks_scripts_licence_versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", limit: 1073741823
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "scriptcdnpro_licence_versions"
  end

  create_table "phcdevworks_scripts_listing_versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", limit: 1073741823
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "scriptcdnpro_listing_versions"
  end

  create_table "phcdevworks_scripts_script_authors", force: :cascade do |t|
    t.string "author_first_name"
    t.string "author_last_name"
    t.string "author_website"
    t.string "author_github"
    t.string "slug"
    t.string "user_id"
    t.string "org_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "phcdevworks_scripts_script_extensions", force: :cascade do |t|
    t.string "script_extension_name"
    t.string "script_extension_description"
    t.string "script_extension"
    t.string "slug"
    t.string "user_id"
    t.string "org_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "phcdevworks_scripts_script_listings", force: :cascade do |t|
    t.string "listing_title"
    t.string "listing_description"
    t.string "listing_script_source"
    t.string "listing_script_website"
    t.string "listing_script_repo"
    t.string "listing_script_status"
    t.date "listing_script_initial_release"
    t.date "listing_script_lastest_release"
    t.date "listing_script_beta_release"
    t.date "listing_script_lastest_release_cdn"
    t.integer "author_id"
    t.string "slug"
    t.string "user_id"
    t.string "org_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_id"], name: "index_phcdevworks_scripts_script_listings_on_author_id"
  end

  create_table "phcdevworks_scripts_script_urls", force: :cascade do |t|
    t.string "script_cdn_url"
    t.date "script_cdn_url_release"
    t.date "script_cdn_url_cdn_update"
    t.integer "listing_id"
    t.integer "extension_id"
    t.integer "version_id"
    t.string "slug"
    t.string "user_id"
    t.string "org_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["extension_id"], name: "index_phcdevworks_scripts_script_urls_on_extension_id"
    t.index ["listing_id"], name: "index_phcdevworks_scripts_script_urls_on_listing_id"
    t.index ["version_id"], name: "index_phcdevworks_scripts_script_urls_on_version_id"
  end

  create_table "phcdevworks_scripts_script_versions", force: :cascade do |t|
    t.string "script_version_number"
    t.string "slug"
    t.string "user_id"
    t.string "org_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "phcdevworks_scripts_scriptversion_versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", limit: 1073741823
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "scriptcdnpro_scriptversion_versions"
  end

  create_table "phcdevworks_scripts_snippet_posts", force: :cascade do |t|
    t.string "snippet_title"
    t.text "snippet_code"
    t.string "slug"
    t.string "user_id"
    t.string "org_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "phcdevworks_scripts_snippet_urls", force: :cascade do |t|
    t.string "snippet_url"
    t.integer "snippet_id"
    t.string "slug"
    t.string "user_id"
    t.string "org_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["snippet_id"], name: "index_phcdevworks_scripts_snippet_urls_on_snippet_id"
  end

  create_table "phcdevworks_scripts_url_versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", limit: 1073741823
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "scriptcdnpro_url_versions"
  end

end
