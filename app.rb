require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  enable :sessions
  set :port, 7200
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player1]
    session[:player_2_name] = params[:player2]
    session[:message] = "You have added names"
    redirect '/game'
  end

  get '/game' do
    @player1 = session[:player_1_name]
    @player2 = session[:player_2_name]
    @message = session[:message]
    erb :game
  end

  post '/attack' do
    session[:message] = "You have attacked"
    redirect '/game'
  end

  run! if app_file == $0
end