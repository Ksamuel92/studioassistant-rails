class Client < ApplicationRecord
  has_many :recording_sessions
  has_many :studios, through: :recording_sessions
  validates_presence_of :name, :email
end
