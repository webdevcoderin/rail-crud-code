class User < ApplicationRecord
  has_many :articles, dependent: :destroy
  before_save { self.email = email.downcase }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :username, presence: true,
    uniqueness: { casesensitive: false }, length: {minimum: 3, maximum: 40 }
  
  validates :email, presence: true,
    uniqueness: { casesensitive: false }, length: {maximum: 105 }, format: { with: VALID_EMAIL_REGEX }
  has_secure_password
end