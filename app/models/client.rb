class Client < ApplicationRecord
  has_many :recsessions
  has_many :studios, through: :recsessions
  validates_presence_of :name, :email
end
