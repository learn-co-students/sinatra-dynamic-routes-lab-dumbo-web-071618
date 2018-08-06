require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @total = @number ** 2
    "#{@total}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @final_array = []

    @number.times do
      @final_array << @phrase
    end
    @final_array
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @answer = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5]

    "#{@answer}."
  end

  get '/:operation/:number1/:number2' do
    @numberone = params[:number1].to_i
    @numbertwo = params[:number2].to_i

    case params[:operation]
    when "add"
      @total = @numberone + @numbertwo
    when "subtract"
      @total = @numberone - @numbertwo
    when "multiply"
      @total = @numberone * @numbertwo
    when "divide"
      @total = @numberone / @numbertwo
    end
    "#{@total}"
  end

end
