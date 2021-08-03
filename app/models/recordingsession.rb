# create_table "recordingsessions", force: :cascade do |t|
#   t.integer "studio_id", null: false
#   t.integer "client_id", null: false
#   t.date "start_date"
#   t.date "end_date"
#   t.integer "hours_per_day"
#   t.integer "per_hour"
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
#   t.index ["client_id"], name: "index_recordingsessions_on_client_id"
#   t.index ["studio_id"], name: "index_recordingsessions_on_studio_id"
# end



class Recordingsession < ApplicationRecord
  belongs_to :studio
  belongs_to :client
  validates_presence_of :start_date, :end_date, :hours_per_day, :per_hour
end
