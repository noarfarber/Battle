require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  set :port, 7100
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/starting_game' do
    p @player1 = params[:player1]
    p @player2 = params[:player2]
    p params
    erb :starting_game
  end

  run! if app_file == $0
end