get '/' do
  redirect '/homepage'
end

get '/homepage' do
  @decks = Deck.all

  erb :'homepage/index'
end

get '/decks/:deck_id/cards/:card_id' do
  @current_deck = Deck.find(params[:deck_id])
  sessions[:cards] = Card.where(deck_id: params[:deck_id])
  @current_card = @cards[(params[:card_id].to_i-1)]
  @current_card_id = params[:card_id].to_i-1
  # session[:in_game] = true

  erb :'deck/index'
end

post '/decks/:deck_id/cards/:card_id' do

  if params[:user_guess] == Card.find(params[:card_id]).answer

  # session[:in_game] = true

  erb :'deck/index'
end
