require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end
  
  get '/square/:number' do
    @n = params[:number].to_i
    "#{@n ** 2}"
  end
  
  get 'say/:number/:phrase' do
    @n = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase}" * @n
  end
end