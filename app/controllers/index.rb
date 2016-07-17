get '/' do
  redirect '/homepage'
end

get '/homepage' do
  @decks = Deck.all

  erb :'homepage/index'
end



 get '/decks/:deck_id/card/:card_id' do
  @cards = Card.all
   @card = Card.find_by(deck_id: params[:deck_id])
   erb :decks
 end

# post '/rounds' do
#   erb :rounds
#   redirect "/cards/#{params[:card]}"
# end

get '/cards' do
  erb :cards
end


get '/results' do
  redirect "/"
end
