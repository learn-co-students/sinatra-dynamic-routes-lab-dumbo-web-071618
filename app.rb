require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @num = params[:number].to_i
    square = @num * @num
    square.to_s
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    string = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    string
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]

    arr = []
    for i in 1..@number.to_i do
      arr << @phrase
    end
    arr.join(' ')
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    case @operation
    when "add"
      result = @num1 + @num2
    when "subtract"
      result = @num1 - @num2
    when "multiply"
      result = @num1 * @num2
    when "divide"
      result = @num1 / @num2
    end

    result.to_s
  end
end
