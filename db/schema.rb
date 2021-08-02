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

ActiveRecord::Schema.define(version: 2021_08_02_120024) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.float "total_price"
    t.date "schedule_date"
    t.integer "available_seats"
    t.bigint "cruise_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cruise_id"], name: "index_bookings_on_cruise_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "cruises", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.time "duration_of_cruise"
    t.integer "capacity"
    t.string "extra_offers"
    t.text "cancellation_policy"
    t.string "location"
    t.float "price"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_cruises_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "address"
    t.text "email"
    t.string "phone_number"
    t.string "password"
    t.boolean "is_owner", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "bookings", "cruises"
  add_foreign_key "bookings", "users"
  add_foreign_key "cruises", "users"
end
