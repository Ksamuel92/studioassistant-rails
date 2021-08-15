
class Studio < ApplicationRecord
  has_many :recording_sessions, dependent: :destroy
  has_many :clients, through: :recording_sessions
  belongs_to :user
  validates_presence_of :name, :address_line_1, :city, :state, :zip_code, :daw, :rental_cost
  validates :email, presence: true, uniqueness: true
  before_save :capitalize_attributes

  def capitalize_attributes
    self.attributes.each do |attr,val|
      self.send("#{attr}=",val.strip.titleize) if self.capitalizable_attributes.include?(attr) && !val.nil?
    end
  end


  def capitalizable_attributes
    %w[name address_line_1 city state daw]
  end
end
