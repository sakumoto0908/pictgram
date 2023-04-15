class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  
  validates :password, presence: true, length: {minimum: 8, maximum: 32},
    format: {with: /\A(?=.*?[a-z])(?=.*?\d)[a-zA-Z\d]+\z/}
  
  has_secure_password
end
