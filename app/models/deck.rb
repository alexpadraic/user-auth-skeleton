class Deck < ActiveRecord::Base
  # Remember to create a migration!
  has_many :rounds
  has_many :cards

  has_many :users, through: :rounds, foreign_key: :user_id
end
