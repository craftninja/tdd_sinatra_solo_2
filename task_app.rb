require 'sinatra/base'

class App < Sinatra::Base
  TASKS = []
  get '/' do
    erb :index
  end
  get '/add_task' do
    erb :add_task
  end
  post '/' do
    TASKS << params[:task]
    redirect '/'
  end
end