class RecordingSession < ApplicationRecord
  belongs_to :studio
  belongs_to :client
  validates_presence_of :start_date, :end_date, :hours_per_day, :per_hour
  accepts_nested_attributes_for :client
  scope :this_week, -> {where(start_date: Time.now..7.days.from_now)}

  def client_attributes=(attributes)
    if !attributes[:id].blank?
      client = Client.find_by(email: attributes[:email])
      client.update(attributes)
    else
      self.client = Client.find_or_create_by(attributes)
    end
  end

  def days_available_by_budget
    num = client.budget/(hours_per_day * per_hour)
    ActionController::Base.helpers.pluralize(num, 'day')
  end

end