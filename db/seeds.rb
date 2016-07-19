cu = Deck.create(name: 'Geography')
Card.create(question: 'What is the circumference of Earth at the equator?', answer: '24,874', deck_id: cu.id)
Card.create(question: 'What is the name of the biggest ocean on earth?', answer: 'Pacific Ocean', deck_id: cu.id)
Card.create(question: 'Which continent is the USA located in?', answer: 'North America', deck_id: cu.id)

user = User.create(email: 'eu@gmail.com', name: 'renan', password: '123')


second_deck = user.decks.create(name: 'Nature')

second_deck.cards.create(question: 'What state is Yosemite Park located in?', answer: 'California', deck_id: second_deck.id)
second_deck.cards.create(question: 'What state is Yellowstone Park located in?', answer: 'Wyoming', deck_id: second_deck.id)
second_deck.cards.create(question: 'What state is the Grand Canyon located in?', answer: 'Arizona', deck_id: second_deck.id)

5.times do
  User.create(email: Faker::Internet.email, name: Faker::Name.name, password: '123')
end

10.times do
  deck = Deck.create(name: Faker::App.name)

  3.times do
    Card.create(question: Faker::Commerce.department, answer: Faker::Commerce.product_name, deck_id: deck.id)
  end
end
