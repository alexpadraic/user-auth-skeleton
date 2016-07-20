get '/' do
  redirect '/homepage'
end

get '/homepage' do
  p params
  p session

  erb :'homepage/index'
end
