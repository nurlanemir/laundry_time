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

ActiveRecord::Schema.define(version: 20170928131117) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "acts_as_bookable_bookings", force: :cascade do |t|
    t.string   "bookable_type"
    t.integer  "bookable_id"
    t.string   "booker_type"
    t.integer  "booker_id"
    t.integer  "amount"
    t.text     "schedule"
    t.datetime "time_start"
    t.datetime "time_end"
    t.datetime "time"
    t.datetime "created_at"
    t.index ["bookable_type", "bookable_id"], name: "index_acts_as_bookable_bookings_bookable", using: :btree
    t.index ["booker_type", "booker_id"], name: "index_acts_as_bookable_bookings_booker", using: :btree
  end

  create_table "laundry_rooms", force: :cascade do |t|
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.text     "schedule"
    t.integer  "capacity",   default: 1
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.integer  "apartment_nr"
    t.string   "password"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
