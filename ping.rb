require 'sinatra'

get '/' do 
	"Hello World"
end

get '/about' do
  'I am beautiful eiei'
end

get '/hello/:name' do
	name_from_url=params[:name]
  "Hello,how are you, #{name_from_url.upcase} "
end

get '/ping' do
	erb:ping
end

post '/form' do
  "You said '#{params[:message]}'"
end

post '/hello' do
  "hello '#{params[:message]}'"
end

post '/goodbye' do
  "bye '#{params[:message]}'"
end



not_found do
  halt 404, 'not found'
end