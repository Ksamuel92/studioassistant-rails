class Studio < ApplicationRecord
  has_many :recordingsessions
  has_many :clients, through: :recordingsessions
  belongs_to :user
  validates_presence_of :title, :address, :description, :rental_cost
end
