require "../spec_helper"

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
