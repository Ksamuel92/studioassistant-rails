
class Studio < ApplicationRecord
  has_many :recording_sessions, dependent: :destroy
  has_many :clients, through: :recording_sessions
  belongs_to :user
  validates_presence_of :name, :address_line_1, :city, :state, :zip_code, :daw, :rental_cost
  validates :email, presence: true, uniqueness: true
end
