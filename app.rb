require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number ** 2}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @number.times do
      # binding.pry
      # @phrase
       "#{@phrase}"
       # binding.pry
    end
    @phrase
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = paramas[:word1]
    @word2 = paramas[:word2]
    @word3 = paramas[:word3]
    @word4 = paramas[:word4]
    @word5 = paramas[:word5]
    @sentence = @word1 + @word2 + @word3 + @word4 + @word5
    "#{@sentence}"
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    if @operation == "add"
      @ans = @num1 + @num2
    elsif @operation == "subtract"
      @ans = @num1 - @num2
    elsif @operation == "multiply"
      @ans = @num1 * @num2
    elsif @operation == "divide"
      @ans = @num1 / @num2
    end
    "#{@ans}"
  end

end
