require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number ** 2}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @phrase * @number
  end
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word_array = []

    word_array << params[:word1]
    word_array << params[:word2]
    word_array << params[:word3]
    word_array << params[:word4]
    word_array << params[:word5]
    binding.pry
    word_array[-1].insert(-1, '.')
    word_array[-1].insert(-1, '.')
  end
end
