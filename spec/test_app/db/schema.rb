# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_04_11_114165) do

  create_table "action_mailbox_inbound_emails", force: :cascade do |t|
    t.integer "status", default: 0, null: false
    t.string "message_id", null: false
    t.string "message_checksum", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["message_id", "message_checksum"], name: "index_action_mailbox_inbound_emails_uniqueness", unique: true
  end

  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.integer "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "phcdevworks_accounts_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "firstname"
    t.string "lastname"
    t.string "username"
    t.string "org_id"
    t.integer "role"
    t.boolean "terms_of_service"
    t.string "payments_customer_id"
    t.index ["confirmation_token"], name: "index_phcdevworks_accounts_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_phcdevworks_accounts_users_on_email", unique: true
    t.index ["firstname"], name: "index_phcdevworks_accounts_users_on_firstname"
    t.index ["lastname"], name: "index_phcdevworks_accounts_users_on_lastname"
    t.index ["org_id"], name: "index_phcdevworks_accounts_users_on_org_id", unique: true
    t.index ["reset_password_token"], name: "index_phcdevworks_accounts_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_phcdevworks_accounts_users_on_unlock_token", unique: true
    t.index ["username"], name: "index_phcdevworks_accounts_users_on_username", unique: true
  end

  create_table "phcdevworks_core_modules_affiliate_link_versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", limit: 1073741823
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "affiliate_link_versions"
  end

  create_table "phcdevworks_core_modules_affiliate_links", force: :cascade do |t|
    t.string "affiliate_link_name"
    t.string "affiliate_link_button_text"
    t.string "affiliate_link_url"
    t.string "affiliate_link_original_url"
    t.string "slug"
    t.string "user_id"
    t.string "org_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "phcdevworks_core_modules_marketing_optimization_versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", limit: 1073741823
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "marketing_optimization_versions"
  end

  create_table "phcdevworks_core_modules_marketing_optimizations", force: :cascade do |t|
    t.string "marketing_optimization_page_title"
    t.text "marketing_optimization_page_description"
    t.string "marketing_optimization_og_title"
    t.text "marketing_optimization_og_description"
    t.string "marketing_optimization_og_type"
    t.string "marketing_optimization_og_url"
    t.string "marketing_optimization_twitter_title"
    t.text "marketing_optimization_twitter_description"
    t.string "marketing_optimization_twitter_type"
    t.string "marketing_optimization_twitter_url"
    t.string "slug"
    t.string "user_id"
    t.string "org_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "phcdevworks_core_modules_post_categories", force: :cascade do |t|
    t.string "post_category_name"
    t.string "slug"
    t.string "user_id"
    t.string "org_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "phcdevworks_core_modules_post_category_versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", limit: 1073741823
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "post_category_versions"
  end

  create_table "phcdevworks_scripts_script_author_versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", limit: 1073741823
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "script_author_versions"
  end

  create_table "phcdevworks_scripts_script_authors", force: :cascade do |t|
    t.string "script_author_first_name"
    t.string "script_author_last_name"
    t.string "script_author_website"
    t.string "script_author_github"
    t.string "slug"
    t.string "user_id"
    t.string "org_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "phcdevworks_scripts_script_extension_versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", limit: 1073741823
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "script_extension_versions"
  end

  create_table "phcdevworks_scripts_script_extensions", force: :cascade do |t|
    t.string "script_extension_name"
    t.text "script_extension_description"
    t.string "script_extension"
    t.string "slug"
    t.string "user_id"
    t.string "org_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "phcdevworks_scripts_script_listing_versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", limit: 1073741823
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "script_listing_versions"
  end

  create_table "phcdevworks_scripts_script_listings", force: :cascade do |t|
    t.string "script_listing_title"
    t.text "script_listing_description"
    t.string "script_listing_script_source"
    t.string "script_listing_script_website"
    t.string "script_listing_script_repo"
    t.string "script_listing_script_status"
    t.date "script_listing_script_initial_release"
    t.date "script_listing_script_lastest_release"
    t.date "script_listing_script_beta_release"
    t.date "script_listing_script_lastest_release_cdn"
    t.string "optimization_id"
    t.string "slug"
    t.string "user_id"
    t.string "org_id"
    t.bigint "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_id"], name: "index_phcdevworks_scripts_script_listings_on_author_id"
  end

  create_table "phcdevworks_scripts_script_url_versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", limit: 1073741823
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "script_url_versions"
  end

  create_table "phcdevworks_scripts_script_urls", force: :cascade do |t|
    t.string "script_cdn_url"
    t.date "script_cdn_url_release"
    t.date "script_cdn_url_cdn_update"
    t.string "slug"
    t.string "user_id"
    t.string "org_id"
    t.bigint "listing_id"
    t.bigint "extension_id"
    t.bigint "version_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["extension_id"], name: "index_phcdevworks_scripts_script_urls_on_extension_id"
    t.index ["listing_id"], name: "index_phcdevworks_scripts_script_urls_on_listing_id"
    t.index ["version_id"], name: "index_phcdevworks_scripts_script_urls_on_version_id"
  end

  create_table "phcdevworks_scripts_script_version_versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", limit: 1073741823
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "script_version_versions"
  end

  create_table "phcdevworks_scripts_script_versions", force: :cascade do |t|
    t.string "script_version_number"
    t.string "slug"
    t.string "user_id"
    t.string "org_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "phcdevworks_scripts_snippet_post_versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", limit: 1073741823
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "snippet_post_versions"
  end

  create_table "phcdevworks_scripts_snippet_posts", force: :cascade do |t|
    t.string "snippet_post_title"
    t.text "snippet_post_code"
    t.string "optimization_id"
    t.string "slug"
    t.string "user_id"
    t.string "org_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "phcdevworks_scripts_snippet_url_versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", limit: 1073741823
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "snippet_url_versions"
  end

  create_table "phcdevworks_scripts_snippet_urls", force: :cascade do |t|
    t.string "snippet_post_url"
    t.string "slug"
    t.string "user_id"
    t.string "org_id"
    t.bigint "post_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["post_id"], name: "index_phcdevworks_scripts_snippet_urls_on_post_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
end
