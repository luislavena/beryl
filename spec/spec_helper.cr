require "spec"
require "../src/beryl"

module Fixtures
  class DummyAction < Beryl::Action
    def call(params)
      HTTP::Response.ok "text/plain", "OK"
    end
  end

  class CountingAction < Beryl::Action
    @@counter = 0

    def self.counter
      @@counter
    end

    def self.reset!
      @@counter = 0
    end

    def call(params)
      @@counter += 1

      HTTP::Response.ok "text/plain", @@counter.to_s
    end
  end

  class EmptyRouter < Beryl::Router
  end

  class SingleRouter < Beryl::Router
    get "/single", DummyAction
  end

  class CountingRouter < Beryl::Router
    post "/count", CountingAction
  end

  class MultiRouter < Beryl::Router
    get    "/products",     DummyAction # [0]
    post   "/products",     DummyAction # [1]
    get    "/products/:id", DummyAction # [2]
    delete "/products/:id", DummyAction # [3]
  end
end

def make_request(method, path)
  HTTP::Request.new(method, path)
end
