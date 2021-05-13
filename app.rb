require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'


class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

enable :sessions

get '/' do
  erb :index
end



post '/names' do
  player_1= Player.new(params[:player_1_name])
  player_2 = Player.new(params[:player_2_name])
  $game = Game.new(player_1, player_2)
  redirect '/play'
end

get '/play' do
  @player_1_name = $game.player_1.name
  @player_2_name = $game.player_2.name
  @player_2_hp = $game.player_2.hp
  erb :play
end

get '/attack' do 
  @player_1_name = $game.player_1.name
  @player_2_name = $game.player_2.name
  $game.attack($game.player_2)
  erb :attack
end


  run! if app_file ==$0
end
