require 'sinatra'

set :port, 8080

get '/' do
  "hello world\n"
end
