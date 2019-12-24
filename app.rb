require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    pig = PigLatinizer.new(params[:text])
    @parsed_latin = pig.atinlay.join(" ")

    erb :user_input
  end
end