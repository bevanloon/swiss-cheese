class User < ActiveRecord::Base
  has_secure_password
  validates :password, length: {minimum: 4}, allow_nil: true
  validates :user_name, presence: true
end
