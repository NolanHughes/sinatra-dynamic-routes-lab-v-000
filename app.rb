require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  ger '/square/:number' do
    @number = params[:number]
    @number.to_i.square
  end
end
