require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do 
    ((params[:number].to_i)**2).to_s
  end

  get '/say/:number/:phrase' do
    result = ""
    params[:number].to_i.times do
      result += "/n" + params[:phrase]
    end
    result
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    result = ""
    params.each do |key, value|
      result += " " + value
    end
    result += "."
  end

  get '/:operation/:number1/:number2' do
    operations = { "add" => "+", "subtract" => "-", "divide" => "/", "multiply" => "*"}
    req_op = operations[params[:operation]]
    code = "#{params[:number1]} #{req_op} #{params[:number2]}"
    eval(code).to_s

  end

end