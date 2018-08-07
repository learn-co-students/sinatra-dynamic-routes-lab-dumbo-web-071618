require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
     @name = params[:name]
     @name.reverse 
  end 
  
  get '/square/:number' do 
     @sqr_num = params[:number].to_i
      "#{@sqr_num * @sqr_num}"
  end 
  
  get '/say/:number/:phrase' do 
      @num = params[:number].to_i
      @p = params[:phrase]
      @arr = []
      @num.times do 
          @arr << @p
      end 
      @arr.join
  end 
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @w1 = params[:word1].to_s
     @w2 = params[:word2].to_s 
      @w3 = params[:word3].to_s 
       @w4 = params[:word4].to_s 
        @w5 = params[:word5].to_s 
        
        arr = [@w1,@w2,@w3,@w4,@w5] 
        
      arr.join(" ") + '.'
        
    
  end 
  
  get "/:operation/:number1/:number2" do
     @opperation = params[:operation]
    @n1 = params[:number1].to_i
    @n2 = params[:number2].to_i
    if @opperation == 'add'
      "#{@n1 + @n2}"
    elsif @opperation == 'subtract'
      "#{@n1 - @n2}"
    elsif @opperation == 'multiply'
      "#{@n1 * @n2}"
    elsif @opperation == 'divide'
      "#{@n1 / @n2}"
    end
  end

end