require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      "Welcome to the Nested Forms Lab! let's navigate to the '/new'"
    end

    get '/new' do
      # binding.pry
      erb :"pirates/new"
    end


    post '/pirates' do
      # binding.pryq
      @pirate = Pirate.new(pirate_params)
      # binding.pry
      @ship_name_1 = Ship.new(pirate_params[:ships][0])
      @ship_name_2 = Ship.new(pirate_params[:ships][1])
      erb :"pirates/show"
      # redirect
    end


    # code other routes/actions here
private
def pirate_params
  params[:pirate]
end

  end
end
