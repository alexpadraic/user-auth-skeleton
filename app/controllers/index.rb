get '/' do
  p @decks = Deck.all
  erb :'index'
end
