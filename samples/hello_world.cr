require "../src/beryl"

class HelloAction < Beryl::Action
  def call(params)
    HTTP::Response.ok "text/html", "Hello World!"
  end
end

class HelloRouter < Beryl::Router
  get "/", HelloAction
end

server = HTTP::Server.new(9292, HelloRouter.new)

Signal::INT.trap {
  server.close
  exit
}

server.listen
