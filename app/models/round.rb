class Round < ActiveRecord::Base
  belongs_to :deck
  has_many :cards, through: :deck
  has_many :guesses
  belongs_to :user
end
