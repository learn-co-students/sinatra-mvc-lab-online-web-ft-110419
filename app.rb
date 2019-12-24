require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do 
    erb :user_input
  end 
  
  post '/piglatinize' do 
    action = PigLatinizer.new
    @pl_display = action.piglatinize(params[:user_phrase])
    erb :result_page
  end 
end