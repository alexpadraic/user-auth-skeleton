get '/rounds/show' do
  p params
  p session

  erb :'rounds/show'
end
