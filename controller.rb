require('sinatra')
require('sinatra/reloader') if development?

require_relative('./models/game.rb')
also_reload('./models/*')

get '/' do
  erb(:home)
end

get '/win/:hand1/:hand2' do
  hand1 = params[:hand1]
  hand2 = params[:hand2]
  @result = RPSGame.check_win(hand1, hand2)
  erb(:rock_wins)
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
