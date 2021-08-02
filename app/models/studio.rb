class Studio < ApplicationRecord
  has_many :sessions
  belongs_to :user
  validates_presence_of :title, :address, :description, :rental_cost, :type
end
