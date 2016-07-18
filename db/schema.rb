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

ActiveRecord::Schema.define(version: 20160718192745) do

  create_table "ages", force: true do |t|
    t.string   "name"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "appellations", force: true do |t|
    t.string   "name"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "logo"
  end

  create_table "grape_types", force: true do |t|
    t.string   "name"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "types", force: true do |t|
    t.string   "name"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wine_ages", force: true do |t|
    t.string   "name"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wine_grapes", force: true do |t|
    t.integer  "wine_id"
    t.integer  "grape_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "wine_grapes", ["grape_type_id"], name: "index_wine_grapes_on_grape_type_id"
  add_index "wine_grapes", ["wine_id"], name: "index_wine_grapes_on_wine_id"

  create_table "wines", force: true do |t|
    t.string   "name"
    t.integer  "type_id"
    t.integer  "appellation_id"
    t.decimal  "bottle_500_price", precision: 10, scale: 2
    t.decimal  "glass_price",      precision: 10, scale: 2
    t.text     "color"
    t.text     "nose"
    t.text     "mouth"
    t.string   "logo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "age_id"
    t.integer  "harvest"
    t.decimal  "bottle_750_price", precision: 10, scale: 2
    t.string   "wine_cell"
    t.text     "elaboration"
  end

  add_index "wines", ["appellation_id"], name: "index_wines_on_appellation_id"
  add_index "wines", ["type_id"], name: "index_wines_on_type_id"

end
