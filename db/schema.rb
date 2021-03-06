# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_08_12_143904) do

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "genre"
    t.integer "budget"
    t.boolean "band"
    t.boolean "drums"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "recording_sessions", force: :cascade do |t|
    t.integer "studio_id", null: false
    t.integer "client_id", null: false
    t.date "start_date"
    t.integer "hours_per_day"
    t.integer "per_hour"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_id"], name: "index_recording_sessions_on_client_id"
    t.index ["studio_id"], name: "index_recording_sessions_on_studio_id"
  end

  create_table "studios", force: :cascade do |t|
    t.string "name"
    t.string "address_line_1"
    t.string "daw"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "rental_cost"
    t.text "description"
    t.integer "user_id", null: false
    t.string "email"
    t.string "address_line_2"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.index ["user_id"], name: "index_studios_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "uid"
    t.string "provider"
  end

  add_foreign_key "recording_sessions", "clients"
  add_foreign_key "recording_sessions", "studios"
  add_foreign_key "studios", "users"
end
