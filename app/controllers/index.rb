get '/' do
  redirect '/homepage'
end

get '/homepage' do
  session[:round_info] = nil
  session[:current_round_id] = nil # Reset the round
  @decks = Deck.all

  erb :'homepage/index'
end

get '/decks/:deck_id/cards/:card_id' do

  @current_deck = Deck.find(params[:deck_id])
  @current_card = Card.find(params[:card_id])

  if session[:round_info].nil?
    session[:round_info] = {}
    session[:round_info][:incorrect_cards] ||= []
    session[:round_info][:card_ids_in_play] ||= @current_deck.cards.map(&:id)
    session[:round_info][:guesses] ||= 0
    session[:round_info][:correct] ||= 0
    session[:round_info][:deck_id] ||= @current_deck.id
    session[:round_info][:user_id] ? @current_user.id : 0

      if session[:user_id] # Create a round for when a user in logged in
        session[:current_round_id] = Round.create(deck_id: params[:deck_id], user_id: session[:user_id]).id
      end
  end

  if params[:user_guess] == @current_card.answer
    @result_response = "Correct! The answer is: #{@current_card.answer}"
    session[:round_info][:card_ids_in_play].delete(@current_card.id)
    session[:round_info][:guesses] += 1
    session[:round_info][:correct] += 1

    if session[:user_id] # Updating attributes
      current_round = Round.find(session[:current_round_id]) # Keeping track of the round
      current_round.update_attribute(:correct_on_first_try, session[:round_info][:correct])
      current_round.update_attribute(:total_guesses, session[:round_info][:guesses])
    end

  elsif params[:user_guess].nil? == false
    session[:round_info][:guesses] += 1

     if session[:user_id] # Updating attributes
      current_round = Round.find(session[:current_round_id]) # Keeping track of the round
      current_round.update_attribute(:total_guesses, session[:round_info][:guesses])
    end
    @result_response = "WRONG! The answer was: #{@current_card.answer}"
  end

  erb :'deck/index'
end

get '/rounds/show' do

  erb :'rounds/show'
end

