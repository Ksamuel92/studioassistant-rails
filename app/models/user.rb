class User < ApplicationRecord
  has_many :studios
  has_many :recording_sessions, through: :studios
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  
  has_secure_password

  def self.from_omniauth(response)
    User.find_or_create_by(uid: response[:uid], provider: response[:provider]) do |u|
      u.name = response[:info][:name]
      u.email = response[:info][:email]
      u.password = SecureRandom.hex(15)
    end
  end
end
