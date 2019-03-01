require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do
    enable :sessions unless test?
    set :session_secret, "secret"
  end
  
  get '/hey' do 
    @session = session
  end
end