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
  end
  erb :'/users/show'
end
