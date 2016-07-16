class User < ActiveRecord::Base
  has_many :rounds
  has_many :guesses, through: :rounds
  has_many :decks, through: :rounds

  include BCrypt

  has_secure_password
end
