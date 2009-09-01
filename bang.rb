require 'sinatra/base'

class Bang < Sinatra::Base
  get '/' do
    'bang!'
  end

  get '/*' do
    s = params[:splat][0].to_f
    sleep(s)
    "yawn! just woke up from #{s} seconds of sleep"
  end
end
