class User < ApplicationRecord
  validates :name, presence: true, length: {maximum: 15}
  validates :email, presence: true, 
    format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}
  
  validates :password, presence: true, length: {minimum: 8, maximum: 32},
    format: {with: /\A(?=.*?[a-z])(?=.*?\d)[a-zA-Z\d]+\z/}
      
  
  has_secure_password
  
  has_many :topics
  has_many :favorites
  has_many :favorite_topics, through: :favorites, source: 'topic'
end
