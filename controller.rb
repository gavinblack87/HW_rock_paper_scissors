require('sinatra')
require('sinatra/reloader') if development?

require_relative('./models/game.rb')
also_reload('./models/*')

get '/' do
  erb(:home)
end

get '/how_to_play' do
  erb(:how_to_play)
end

get '/result' do
  erb(:result)
end

get '/check_win/:hand1/:hand2' do
  hand1 = params[:hand1]
  hand2 = params[:hand2]
  @outcome = RPSGame.check_win(hand1, hand2)
  erb(:result)
end

# get '/scissor/:hand1/:hand2' do
#   hand1 = params[:hand1]
#   hand2 = params[:hand2]
#   @result = RPSGame.check_win(hand1, hand2)
#   erb(:scissor_wins)
# end
#
# get '/paper/:hand1/:hand2' do
#   hand1 = params[:hand1]
#   hand2 = params[:hand2]
#   @result = RPSGame.check_win(hand1, hand2)
#   erb(:paper_wins)
# end
