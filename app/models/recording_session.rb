class RecordingSession < ApplicationRecord
  belongs_to :studio
  belongs_to :client
  has_one :user, through: :studio
  validates_presence_of :start_date, :hours_per_day, :per_hour
  accepts_nested_attributes_for :client

  scope :this_week, -> { where(start_date: Time.now..7.days.from_now) }

  def client_attributes=(attributes)
    self.client = Client.find_or_create_by(attributes)
  end

  def days_available_by_budget
    client.budget / (hours_per_day * per_hour)
  end

  def end_date
    start_date + days_available_by_budget
  end
end
