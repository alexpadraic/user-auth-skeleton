class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :rounds
  has_many :decks, through: :rounds, foreign_key: :deck_id

end

