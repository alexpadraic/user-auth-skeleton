get '/' do
  redirect '/homepage'
end

get '/homepage' do
  p params
  p session

  @decks = Deck.all

  erb :'homepage/index'
end

get '/decks/:deck_id/cards/:card_id' do
  p params
  p session

  @current_deck = Deck.find(params[:deck_id])
  @current_card = Card.find(params[:card_id])
  session[:card_ids_in_play] ||= @current_deck.cards.map(&:id)


  # if session[:user_guess] == Card.find(params[:card_id]).answer
  #   @result_response = "Congrats! The answer was '#{Card.find(params[:card_id]).answer}.'"
  #   session[:cards].each do |card|
  #     if card.id == params[:card_id]
  #       session[:cards].delete_at(session[:cards].index(card))
  #     end
  #   end
  #   session[:user_guess] = nil
  # elsif session[:user_guess] != nil
  #   @result_response = "Sorry, the correct response was '#{Card.find(params[:card_id]).answer}.'"
  #   session[:user_guess] = nil
  # end

  erb :'deck/index'
end

