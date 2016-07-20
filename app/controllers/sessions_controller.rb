get '/sessions/new' do
  erb :'/sessions/new'
end

post '/sessions/new' do
  @user = User.authenticate(params[:email], params[:password])
  if @user
    login(@user)

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
