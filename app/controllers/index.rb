get '/' do
  erb :index
end

get '/homepage' do
  @decks = Deck.all
  erb :'homepage/index'
end

get '/deck/:id' do
  @cards=Card.find_by(deck_id: params[:id])
  erb :'deck/index'
end
