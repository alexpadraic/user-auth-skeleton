get '/sessions/new' do
  erb :'/sessions/new'
end

post '/sessions/new' do
  @user = User.authenticate(params[:email], params[:password])
  if @user
    login(@user)
    if session[:round_info]
      Round.create(correct_on_first_try: session[:round_info][:correct], total_guesses: session[:round_info][:guesses], deck_id: session[:round_info][:deck_id], user_id: @user.id)
    end
    redirect "/users/#{@user.id}"
  else
    @error = "Email or password incorrect!"
    erb :'/sessions/new'
  end
end

get '/sessions/delete' do
  session[:user_id] = nil
  redirect '/'
end
