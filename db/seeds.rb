# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user = User.create(
  name: 'John Doe', 
  email: 'john@example.com', 
  password: 'ohyeah'
)

 studio = user.studios.build(
  name: 'Studio',
  email: 'studio@example.com',
  address: '123 jump street',
  daw: 'ableton live',
  type: 'Studio'
)
client = Client.create(
  name: 'Client Samuel',
  email: 'client@example.com',
  genre: 'Rock',
  budget: '3000',
  band?: true,
  drums?: true
)

recsession = Recordingsession.create(
  studio_id: studio.id,
  client_id: client.id, 
  start_date: Date.new(2021,2,3),
  end_date: Date.new(2021,2,5),
  hours_per_day: 6,
  per_hour: '300'
)


# ActiveRecord::Schema.define(version: 2021_08_03_145459) do

#   create_table "clients", force: :cascade do |t|
#     t.string "name"
#     t.string "email"
#     t.string "genre"
#     t.integer "budget"
#     t.boolean "band?"
#     t.boolean "drums?"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#   end

#   create_table "recsessions", force: :cascade do |t|
#     t.integer "studio_id", null: false
#     t.integer "client_id", null: false
#     t.date "start_date"
#     t.date "end_date"
#     t.integer "hours_per_day"
#     t.integer "per_hour"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#     t.index ["client_id"], name: "index_recsessions_on_client_id"
#     t.index ["studio_id"], name: "index_recsessions_on_studio_id"
#   end

#   create_table "studios", force: :cascade do |t|
#     t.string "name"
#     t.string "address"
#     t.string "daw"
#     t.string "type"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#     t.integer "rental_cost"
#     t.text "description"
#     t.integer "user_id", null: false
#     t.index ["user_id"], name: "index_studios_on_user_id"
#   end

#   create_table "users", force: :cascade do |t|
#     t.string "name"
#     t.string "email"
#     t.string "password_digest"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#     t.string "uid"
#     t.string "provider"
#   end

#   add_foreign_key "recsessions", "clients"
#   add_foreign_key "recsessions", "studios"
#   add_foreign_key "studios", "users"
# end
