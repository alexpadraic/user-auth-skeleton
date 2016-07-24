get '/' do
  redirect '/homepage'
end

get '/homepage' do
  erb :'homepage/index'
end
