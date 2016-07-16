class User < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :round
  has_many :decks, through: :rounds, source: :deck_id

end

