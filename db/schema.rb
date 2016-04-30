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

ActiveRecord::Schema.define(version: 20160430231350) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adventure_groups", force: :cascade do |t|
    t.datetime "adventure_date"
    t.integer  "pack_leader_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "adventure_type_id"
  end

  add_index "adventure_groups", ["pack_leader_id"], name: "index_adventure_groups_on_pack_leader_id", using: :btree

  create_table "adventure_types", force: :cascade do |t|
    t.string   "name"
    t.decimal  "price_per_day"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "pack_leaders", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "adventure_groups", "pack_leaders"
end
