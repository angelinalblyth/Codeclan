require('sinatra')
require('sinatra/contrib/all')

get '/hi' do
  return 'Hello World! is it me your looking for'
end


get '/roll-die' do
  return "I rolled a #{rand(1..6)}"
end


get '/name/:first/:last' do
  return "Hello, #{params[:first]} #{params[:last]}"
end

get '/friends/john' do
  return "Hi, John!"
end

get '/friends/:number' do
  friends = ["Jerry", "Elaine", "George", "Kramer"]
  index = params[:number].to_i
  return friends[index]
end
