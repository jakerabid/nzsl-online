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

ActiveRecord::Schema.define(version: 2019_08_29_185018) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "feedbacks", id: :serial, force: :cascade do |t|
    t.string "name"
    t.text "message"
    t.string "video_file_name"
    t.integer "video_file_size"
    t.string "video_content_type"
    t.datetime "video_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "email"
    t.string "hearing_level"
    t.string "nzsl_level"
    t.boolean "include_sign"
    t.string "include_describe"
    t.string "include_define"
    t.string "include_users"
    t.text "include_comments"
    t.boolean "change_sign"
    t.string "change_sign_gloss"
    t.string "change_sign_url"
    t.string "change_sign_entry"
    t.text "change_comments"
    t.boolean "technical_fault"
  end

  create_table "page_parts", id: :serial, force: :cascade do |t|
    t.string "title"
    t.integer "order"
    t.text "body"
    t.string "translation_path"
    t.integer "page_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["page_id"], name: "index_page_parts_on_page_id"
  end

  create_table "pages", id: :serial, force: :cascade do |t|
    t.string "title"
    t.string "slug"
    t.string "label"
    t.integer "order"
    t.string "template"
    t.boolean "show_in_nav"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["order"], name: "index_pages_on_order"
    t.index ["slug"], name: "index_pages_on_slug"
  end

  create_table "requests", id: :serial, force: :cascade do |t|
    t.text "url"
    t.float "elapsed_time"
    t.integer "count"
    t.text "query_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "settings", id: :serial, force: :cascade do |t|
    t.string "key"
    t.string "value"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["key"], name: "index_settings_on_key"
  end

  create_table "sitemaps", force: :cascade do |t|
    t.text "xml"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vocab_sheets", id: :serial, force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "name"
    t.jsonb "raw_item_attrs", default: [], null: false
  end

end
