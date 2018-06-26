require './environment'

module FormsLab
  class App < Sinatra::Base

    get "/" do
      "Welcome to the Nested Forms Lab! let's navigate to the '/new'"
    end

    get '/new' do
      erb :'/pirates/new'
    end


    get '/show' do
      erb :'pirates/show'
            binding.pry
    end


    post '/pirates' do
      @pirate = Pirate.new(name: params[:pirate][:name], height: params[:pirate][:height], weight: params[:pirate][:weight])
      @ship = Ship.new(params[:pirate][:ships][0])
      @ship2 = Ship.new(params[:pirate][:ships][1])
      erb :'pirates/show'
    end


    # code other routes/actions here

  end
end
