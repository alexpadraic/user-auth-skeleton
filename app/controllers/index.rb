get '/' do
  redirect '/homepage'
end

get '/homepage' do
  p params
  p session
  session[:round_info] = nil
  @decks = Deck.all

  erb :'homepage/index'
end
