require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
    @puppy = Puppy.new(params['name'],params['breed'],params['months_old'])
    # binding.pry
    # @puppy = Puppy.create(params)
    erb :display_puppy
  end


end
