get '/' do
  redirect '/homepage'
end

get '/homepage' do
  @decks = Deck.all

  erb :'homepage/index'
end

get '/decks/:deck_id/cards/:card_id' do
  p params
  p session

  @current_deck = Deck.find(params[:deck_id])
  if session[:in_game].nil?
    session[:cards] = Card.where(deck_id: params[:deck_id])
  end
  @current_card = session[:cards][(params[:card_id].to_i-1)]
  session[:in_game] = true


  if session[:user_guess] == Card.find(params[:card_id]).answer
    @result_response = "Congrats! The answer was #{Card.find(params[:card_id]).answer}"
    session[:cards].each do |card|
      if card.id == params[:card_id]
        session[:cards].delete_at(session[:cards].index(card))
      end
    end
    session[:user_guess] = nil
  elsif session[:user_guess] != nil
    @result_response = "Sorry, the correct response was #{Card.find(params[:card_id]).answer}"
    session[:user_guess] = nil
  end

  erb :'deck/index'
end



post '/decks/:deck_id/cards/:card_id' do
  p params
  p session
  session[:user_guess] = params[:user_guess]

  redirect "decks/#{params[:deck_id]}/cards/#{params[:card_id]}"
end
