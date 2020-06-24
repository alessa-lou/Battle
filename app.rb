require 'sinatra/base'
require 'capybara'
require 'capybara/rspec'
require 'rspec'

class Battle < Sinatra::Base
  get '/' do
    'Testing infrastructure working!'
    erb(:index)
  end

  post '/names' do
    @player1 = params[:player1]
    @player2 = params[:player2]
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
