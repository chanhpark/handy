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

ActiveRecord::Schema.define(version: 20150611212053) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.string  "name",           null: false
    t.string  "street_address", null: false
    t.string  "city",           null: false
    t.string  "state",          null: false
    t.string  "zip_code",       null: false
    t.integer "user_id",        null: false
    t.string  "phone"
    t.float   "latitude"
    t.float   "longitude"
  end

  create_table "player_rounds", force: :cascade do |t|
    t.integer "player_id",  null: false
    t.integer "round_id",   null: false
    t.integer "score",      null: false
    t.integer "hole_count", null: false
  end

  create_table "rounds", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.integer  "course_id",  null: false
    t.date     "round_date", null: false
    t.time     "tee_time",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tees", force: :cascade do |t|
    t.string  "name"
    t.string  "color",     null: false
    t.integer "slope",     null: false
    t.integer "rating",    null: false
    t.integer "yardage",   null: false
    t.integer "course_id", null: false
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "handicap"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
