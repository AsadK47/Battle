require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    "Testing infrastructure!"
  end

  run! if app_file == $0

end
