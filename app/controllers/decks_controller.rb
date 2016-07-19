get '/decks/:deck_id/cards/:card_id' do

  p params
  p session

  @current_deck = Deck.find(params[:deck_id])
  @current_card = Card.find(params[:card_id])


  # if session[:card_ids_in_play].length == 0
  #   erb :'rounds/show'
  # end

  if session[:round_info].nil?
    session[:round_info] = {}
    session[:round_info][:incorrect_cards] ||= []
    session[:round_info][:card_ids_in_play] ||= @current_deck.cards.map(&:id)
    session[:round_info][:guesses] ||= 0
    session[:round_info][:correct] ||= 0
    session[:round_info][:deck_id] ||= @current_deck.id
  end


  if params[:user_guess] == @current_card.answer
    @result_response = "Correct! The answer is: #{@current_card.answer}"
    session[:round_info][:card_ids_in_play].delete(@current_card.id)
    session[:round_info][:guesses] += 1
    session[:round_info][:correct] += 1 if session[:round_info][:incorrect_cards].exclude?@current_card.id
  elsif params[:user_guess].nil? == false
    session[:round_info][:guesses] += 1
    session[:round_info][:incorrect_cards] << @current_card.id if session[:round_info][:incorrect_cards].exclude?@current_card.id
    @result_response = "WRONG! The answer was: #{@current_card.answer}"
  end

  p params
  p session

  erb :'deck/index'
end
