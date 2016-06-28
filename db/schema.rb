# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160627150402) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accessories", force: :cascade do |t|
    t.string   "accessory_name"
    t.string   "brand"
    t.string   "color"
    t.string   "description"
    t.string   "tags"
    t.string   "image"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "profile_id"
  end

  add_index "accessories", ["profile_id"], name: "index_accessories_on_profile_id", using: :btree

  create_table "bottoms", force: :cascade do |t|
    t.string   "bottom_name"
    t.string   "brand"
    t.string   "color"
    t.boolean  "business"
    t.string   "leg_length"
    t.string   "description"
    t.string   "image"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "profile_id"
  end

  add_index "bottoms", ["profile_id"], name: "index_bottoms_on_profile_id", using: :btree

  create_table "examples", force: :cascade do |t|
    t.text     "text",       null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "examples", ["user_id"], name: "index_examples_on_user_id", using: :btree

  create_table "outfits", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "shirt_id"
    t.integer  "bottom_id"
    t.integer  "shoe_id"
    t.integer  "accessory_id"
    t.integer  "profile_id"
  end

  add_index "outfits", ["accessory_id"], name: "index_outfits_on_accessory_id", using: :btree
  add_index "outfits", ["bottom_id"], name: "index_outfits_on_bottom_id", using: :btree
  add_index "outfits", ["profile_id"], name: "index_outfits_on_profile_id", using: :btree
  add_index "outfits", ["shirt_id"], name: "index_outfits_on_shirt_id", using: :btree
  add_index "outfits", ["shoe_id"], name: "index_outfits_on_shoe_id", using: :btree

  create_table "profiles", force: :cascade do |t|
    t.string   "given_name"
    t.string   "surname"
    t.string   "gender"
    t.text     "description"
    t.string   "picture"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id", using: :btree

  create_table "shirts", force: :cascade do |t|
    t.string   "top_name"
    t.string   "brand"
    t.string   "color"
    t.string   "business"
    t.string   "pattern"
    t.string   "sleeves"
    t.string   "tags"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "profile_id"
    t.string   "image"
  end

  add_index "shirts", ["profile_id"], name: "index_shirts_on_profile_id", using: :btree

  create_table "shoes", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "image"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "profile_id"
    t.string   "color"
  end

  add_index "shoes", ["profile_id"], name: "index_shoes_on_profile_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "token",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["token"], name: "index_users_on_token", unique: true, using: :btree

  add_foreign_key "accessories", "profiles"
  add_foreign_key "bottoms", "profiles"
  add_foreign_key "examples", "users"
  add_foreign_key "outfits", "accessories"
  add_foreign_key "outfits", "bottoms"
  add_foreign_key "outfits", "profiles"
  add_foreign_key "outfits", "shirts"
  add_foreign_key "outfits", "shoes"
  add_foreign_key "profiles", "users"
  add_foreign_key "shirts", "profiles"
  add_foreign_key "shoes", "profiles"
end
