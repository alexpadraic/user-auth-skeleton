get '/' do
  redirect '/homepage'
end

get '/homepage' do
  session[:round_info] = nil
  session[:current_round_id] = nil # Reset the round
  @decks = Deck.all

  erb :'homepage/index'
end
