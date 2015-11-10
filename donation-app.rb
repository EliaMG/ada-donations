require "sinatra"
require "sinatra/reloader"

class DonationApp < Sinatra::Base
  register Sinatra::Reloader

  get '/' do
    erb :index
  end

  # get '/receipt' do
  #   erb :receipt
  # end

end
