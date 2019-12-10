require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @reversed_name = params[:name].reverse
    "#{@reversed_name}"
  end

  get '/square/:number' do
    @squared_number = params[:number].to_i * params[:number].to_i
    "#{@squared_number}"
  end

  get '/say/:number/:phrase' do
    combined = ''

    params[:number].to_i.times do
      combined += params[:phrase]
    end
    combined
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    space = " "
    string = @word1
    string.concat(space, @word2, space, @word3, space, @word4, space, @word5)
    "#{string}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    if @operation == 'add'
      added = @number1 + @number2
      "#{added.to_s}"
    elsif @operation == 'subtract'
      subtracted = @number1 - @number2
      "#{subtracted.to_s}"
    elsif @operation == 'multiply'
      multiplied = @number1 * @number2
      "#{multiplied.to_s}"
    elsif @operation == 'divide'
      divided = @number1 / @number2
      "#{divided.to_s}"
    end
  end

end