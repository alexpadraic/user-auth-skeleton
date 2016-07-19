get '/users/new' do
  erb :'/users/new'
end

post '/users/new' do
  @user = User.new(params)
  if @user.save
    login(@user)
    if session[:round_info]
      Round.create(correct_on_first_try: session[:round_info][:correct], total_guesses: session[:round_info][:guesses], deck_id: session[:round_info][:deck_id], user_id: @user.id)
    end
    redirect "/users/#{@user.id}"
  else
    erb :'/users/new'
  end
end

get '/users/:id' do
  if session[:user_id]
    @user = User.where(id: session[:user_id])
    if session[:round_info]
      Round.create(correct_on_first_try: session[:round_info][:correct], total_guesses: session[:round_info][:guesses], deck_id: session[:round_info][:deck_id], user_id: session[:user_id])
    end
  end
  erb :'/users/show'
end

get '/users/deck/new' do
  @user = User.find(session[:user_id])
  erb :'/users/deck'
end

post '/users/decks' do
  @deck = Deck.new(name: params[:name], user_id: session[:user_id])

  if @deck.save
    redirect "/users/#{@deck.id}/cards/new"
  else
    erb :'/users/deck'
  end
end

get '/users/:id/cards/new' do
  @deck = Deck.find(params[:id])
  erb :'cards/new'
end

post '/users/decks/:deck_id/cards' do
  @card = Card.new(question: params[:question], answer: params[:answer], deck_id: params[:deck_id])
  @deck = Deck.find(params[:deck_id])

  if @card.save
    erb :'cards/new'
  else
    @error = "Card not saved!"
    erb :'cards/new'
  end
end



