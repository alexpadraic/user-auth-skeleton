get '/users/new' do

erb :'/users/new'
end


post '/users' do
@user = User.new(params[:user])

if @user.save
  redirect "/sessions/new"
else
  @error = "Sorry try again"
  erb :'/users/new'
end


end
