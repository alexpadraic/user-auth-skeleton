

get '/users/new' do
  erb :'/users/new'
end

post '/users/new' do
  @user = User.new(params)
  if @user.save
    redirect '/'
  else
    erb :'/users/new'
  end
end

# get '/users/:id' do
#   erb :'/users/profile'
# end
