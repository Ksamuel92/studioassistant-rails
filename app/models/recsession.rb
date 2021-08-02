class RecSession < ApplicationRecord
  belongs_to :studio
  belongs_to :client
  validates_presence_of :start_date, :end_date, :hours_per_day, :band?, :drums?, :genre, :budget
end
