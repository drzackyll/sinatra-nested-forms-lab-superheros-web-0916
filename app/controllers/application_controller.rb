require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :index
    end

    post '/' do
      # binding.pry
      @heroes = params
      erb :team
    end

end
