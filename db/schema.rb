# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_08_26_175114) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "consultant_translations", force: :cascade do |t|
    t.bigint "consultant_id"
    t.string "locale"
    t.string "expertise"
    t.text "bio"
    t.index ["consultant_id"], name: "index_consultant_translations_on_consultant_id"
  end

  create_table "consultants", force: :cascade do |t|
    t.string "name"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mobility_string_translations", force: :cascade do |t|
    t.string "locale", null: false
    t.string "key", null: false
    t.string "value"
    t.string "translatable_type"
    t.bigint "translatable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["translatable_id", "translatable_type", "key"], name: "index_mobility_string_translations_on_translatable_attribute"
    t.index ["translatable_id", "translatable_type", "locale", "key"], name: "index_mobility_string_translations_on_keys", unique: true
    t.index ["translatable_type", "key", "value", "locale"], name: "index_mobility_string_translations_on_query_keys"
  end

  create_table "mobility_text_translations", force: :cascade do |t|
    t.string "locale", null: false
    t.string "key", null: false
    t.text "value"
    t.string "translatable_type"
    t.bigint "translatable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["translatable_id", "translatable_type", "key"], name: "index_mobility_text_translations_on_translatable_attribute"
    t.index ["translatable_id", "translatable_type", "locale", "key"], name: "index_mobility_text_translations_on_keys", unique: true
  end

  create_table "review_translations", force: :cascade do |t|
    t.bigint "review_id"
    t.string "locale"
    t.string "position"
    t.text "content"
    t.index ["review_id"], name: "index_review_translations_on_review_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "client"
    t.bigint "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "services"
    t.bigint "services_id"
    t.string "company"
    t.index ["service_id"], name: "index_reviews_on_service_id"
    t.index ["services_id"], name: "index_reviews_on_services_id"
  end

  create_table "service_translations", force: :cascade do |t|
    t.bigint "service_id"
    t.string "locale"
    t.string "name"
    t.text "description"
    t.string "summary"
    t.index ["service_id"], name: "index_service_translations_on_service_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "reviews", "services", column: "services_id"
end
