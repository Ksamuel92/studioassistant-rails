
  # create_table "studios", force: :cascade do |t|
  #   t.string "name"
  #   t.string "address"
  #   t.string "daw"
  #   t.string "type"
  #   t.datetime "created_at", precision: 6, null: false
  #   t.datetime "updated_at", precision: 6, null: false
  #   t.integer "rental_cost"
  #   t.text "description"
  #   t.integer "user_id", null: false
  #   t.string "email"
  #   t.index ["user_id"], name: "index_studios_on_user_id"
  # end


class Studio < ApplicationRecord
  has_many :recording_sessions, dependent: :destroy
  has_many :clients, through: :recording_sessions
  belongs_to :user

  
end
