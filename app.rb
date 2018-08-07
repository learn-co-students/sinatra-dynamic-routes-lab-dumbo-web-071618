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
    # https://stackoverflow.com/questions/14795428/repeat-method-to-give-string-an-x-amounts-of-times/25273554
    "#{@phrase * @number}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params.map { |param| param[1] }.join(' ') + '.'
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    # If the ".to_i" method is implemented before the following code, the tests
    # will break.
    @operation.downcase == 'add' ? "#{@number1 + @number2}" :
    @operation.downcase == 'subtract' ? "#{@number1 - @number2}" :
    @operation.downcase == 'multiply' ? "#{@number1 * @number2}" :
    @operation.downcase == 'divide' ? "#{@number1 / @number2}" : nil
  end
end
