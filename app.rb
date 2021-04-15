require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  enable :sessions
  set :port, 7100
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player1]
    session[:player_2_name] = params[:player2]
    redirect '/starting_game'
  end

  get '/starting_game' do
    @player1 = session[:player_1_name]
    @player2 = session[:player_2_name]
    erb :starting_game
  end

  run! if app_file == $0
end