require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  ger '/square/:number' do
    @number = params[:number]
    binding.pry
    @number.to_i
  end
end
