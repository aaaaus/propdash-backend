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

ActiveRecord::Schema.define(version: 2019_01_10_192807) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "amenities", force: :cascade do |t|
    t.string "name"
    t.integer "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leases", force: :cascade do |t|
    t.integer "unit_id"
    t.integer "start_date"
    t.integer "end_date"
    t.integer "rent"
    t.string "status"
    t.integer "account_balance"
    t.boolean "in_legal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prop_amenities", force: :cascade do |t|
    t.integer "property_id"
    t.integer "amenity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "properties", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "res_leases", force: :cascade do |t|
    t.integer "resident_id"
    t.integer "lease_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "residents", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "ssn"
    t.string "date_of_birth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "unit_amenities", force: :cascade do |t|
    t.integer "unit_id"
    t.integer "amenity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "units", force: :cascade do |t|
    t.integer "property_id"
    t.string "number"
    t.string "layout_type"
    t.integer "floor"
    t.integer "square_footage"
    t.string "line"
    t.string "floorplan"
    t.string "status"
    t.integer "market_rent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
