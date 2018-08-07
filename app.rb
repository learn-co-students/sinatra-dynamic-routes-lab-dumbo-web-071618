require "pry"
require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reversed_name = params[:name].reverse
    erb :reversename
  end

  get '/square/:number' do
    @number = params[:number].to_i
    erb :square
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    erb :num_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    i = 1
    @sentence = []
    until params["word#{i}".to_sym] == nil
      @sentence << params["word#{i}".to_sym]
      # binding.pry
      i += 1
    end
    erb :fivewords
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    # binding.pry
    case @operation
      when 'add'
        @num = params[:number1].to_i + params[:number2].to_i
      when 'subtract'
        @num = params[:number1].to_i - params[:number2].to_i
      when 'divide'
        @num = params[:number1].to_i / params[:number2].to_i
      when 'multiply'
        @num = params[:number1].to_i * params[:number2].to_i
    end
    erb :operation
  end

end
