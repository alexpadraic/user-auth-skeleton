cu = Deck.create(name: 'Curiosity')
Card.create(question: 'What is the circumference of Earth at the equator', answer: '24,874 ', deck_id: cu.id)
Card.create(question: 'What means USA', answer: 'United State', deck_id: cu.id)
Card.create(question: 'Which continent where USA', answer: 'North America', deck_id: cu.id)

user = User.create(email: 'eu@gmail.com', name: 'renan', password_hash: '123')


second_deck = Deck.create(name: 'Nature')
Card.create(question: 'Where is Yosemite park?', answer: 'California', deck_id: second_deck.id)
Card.create(question: 'Where is Yellowstone?', answer: 'Wyoming', deck_id: second_deck.id)
Card.create(question: 'Where is Grand Canyon', answer: 'Arizona', deck_id: second_deck.id)
