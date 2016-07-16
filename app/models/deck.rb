class Deck < ActiveRecord::Base
  has_many :cards
  has_many :rounds
end

# test_deck = Deck.new(title: 'Nightwarks') test_card = Card.create(question: "Whats up", answer: "Nothing") test_round = Round.create test_deck.cards << test_card test_deck.rounds << test_round test_guess = Guess.create(first_try?: true) test_user = User.create(full_name: "Georgia", username: "Rusty", password: "kevinrules", email: "rustyroo@rooroo.com")
