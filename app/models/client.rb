class Client < ApplicationRecord
  has_many :recordingsessions
  has_many :studios, through: :recordingsessions
  validates_presence_of :name, :email
  accepts_nested_attributes_for :recordingsessions
end
