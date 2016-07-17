
get '/sessions' do
  erb :'/sessions/new'
end

post '/sessions/new' do
  @user = User.authenticate(params[:email], params[:password])
  if @user
    login(@user)
    redirect "/homepage"
  else
    @error = "Email or password incorrect!"
    erb :'/sessions/new'
  end
end

get '/sessions/logout' do
  session[:user_id] = nil
  redirect '/'
end
