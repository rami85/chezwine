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

ActiveRecord::Schema.define(version: 20160328170114) do

  create_table "appellations", force: true do |t|
    t.string   "name"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "logo"
  end

  create_table "types", force: true do |t|
    t.string   "name"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wines", force: true do |t|
    t.string   "name"
    t.integer  "type_id"
    t.integer  "appellation_id"
    t.decimal  "bottle_price"
    t.decimal  "glass_price"
    t.text     "color"
    t.text     "nose"
    t.text     "mouth"
    t.string   "logo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "wines", ["appellation_id"], name: "index_wines_on_appellation_id"
  add_index "wines", ["type_id"], name: "index_wines_on_type_id"

end
