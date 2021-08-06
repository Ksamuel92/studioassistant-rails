class Client < ApplicationRecord
  has_many :recording_sessions
  has_many :studios, through: :recording_sessions
  validates_presence_of :name, :email



  # def recording_sessions_attributes=(attributes)
  #   attributes.each do |_key, value|
  #     session = RecordingSession.create(value)
  #     session.client = self
  #   end

end
