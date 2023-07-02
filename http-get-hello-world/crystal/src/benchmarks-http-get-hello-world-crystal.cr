require "atomic"
require "http/server"
require "log"

Log.setup(:debug)

requests = Atomic.new(0)

server = HTTP::Server.new do |context|
  requests.add(1)
  Log.info { "[#{requests.get}] #{context.request.remote_address} #{context.request.headers.get("user-agent")}" }
  context.response.content_type = "text/plain"
  context.response.print "hello world\n"
end

address = server.bind_tcp 8080
Log.info { "Listening on http://#{address}" }
server.listen
