require_relative 'config/environment'

class App < Sinatra::Base
      get "/" do 
      erb :user_input
    end
    post "/piglatinize" do 
      pigLatinizer = PigLatinizer.new
      @new_result  = pigLatinizer.piglatinize(params[:user_phrase])
    erb :new 
   end
end