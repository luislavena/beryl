require "../spec_helper"

class Fixtures::ScratchAction < Beryl::Action
  @@called = 0
  @@instantiated = 0

  def initialize
    @@instantiated += 1
  end

  def call(params)
    @@called += 1

    HTTP::Response.ok "text/plain", "OK"
  end

  def self.called
    @@called
  end

  def self.instantiated
    @@instantiated
  end

  def self.reset!
    @@called = 0
    @@instantiated = 0
  end
end

describe Beryl::Action do
  describe ".call" do
    it "instantiate the defined action" do
      klass = Fixtures::ScratchAction
      klass.reset!

      request = make_request "GET", "/10?foo=bar"
      klass.call(request, nil)

      klass.instantiated.should eq(1)
      klass.called.should eq(1)
    end
  end
end
