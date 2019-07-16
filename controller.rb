require('sinatra')
require('sinatra/reloader') if development?

require_relative('./models/game.rb')
also_reload('./models/*')

get '/' do
  erb(:home)
end

get '/scissor-wins' do
  erb(:scissor_wins)
end

get '/paper-wins' do
  erb(:paper_wins)
end

get '/rock-wins' do
  erb(:rock_wins)
end
