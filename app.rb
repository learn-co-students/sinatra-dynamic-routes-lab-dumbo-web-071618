require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    # binding.pry
    params[:name].reverse
  end

  get "/square/:number" do
    # binding.pry
    squared_i = params[:number].to_i ** 2
    squared_i.to_s
  end

  get "/say/:number/:phrase" do
    # binding.pry
    number = params[:number].to_i
    params[:phrase]*number
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    word_str = ""
    params.each do |word, word_value|
      word_str += word_value + " "
      # binding.pry
    end
    word_str = word_str.strip + "."
  end

  get "/:operation/:number1/:number2" do
    # binding.pry
    if params[:operation] == "add"
      add_i = params[:number1].to_i + params[:number2].to_i
      add_i.to_s
    elsif params[:operation] == "subtract"
      subtract_i = params[:number1].to_i - params[:number2].to_i
      subtract_i.to_s
    elsif params[:operation] == "multiply"
      multiply_i = params[:number1].to_i * params[:number2].to_i
      multiply_i.to_s
    elsif params[:operation] == "divide"
      divide_i = params[:number1].to_i / params[:number2].to_i
      divide_i.to_s
    end
  end

end
