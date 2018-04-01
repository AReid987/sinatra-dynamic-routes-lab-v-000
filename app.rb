require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @number = params[:number]
    (@number.to_i * @number.to_i).to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]

    @phrase * @number.to_i
  end

end
