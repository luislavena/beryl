require "../spec_helper"

private def make_route(method, path, klass = Fixtures::DummyAction)
  Beryl::Route.new(method, path, klass)
end

describe Beryl::Route do
  describe "#call" do
    it "passes matching parameters to the action" do
      Fixtures::ParamsAction.reset!

      route = make_route "GET", "/:id", Fixtures::ParamsAction
      request = make_request "GET", "/10?foo=bar"
      route.call(request)

      params = Fixtures::ParamsAction.params
      params.empty?.should_not be_true
      params["id"].should eq("10")
      params["foo"].should eq("bar")
    end
  end

  describe "#matches?" do
    context "with a non-matching Request path" do
      it "returns false" do
        route = make_route "GET", "/"
        request = make_request "GET", "/foo"
        route.matches?(request).should be_false
      end
    end

    context "with a non-matching Request method" do
      it "returns false" do
        route = make_route "GET", "/"
        request = make_request "POST", "/"
        route.matches?(request).should be_false
      end
    end

    context "with a matching Request" do
      it "returns true" do
        route = make_route "GET", "/"
        request = make_request "GET", "/"
        route.matches?(request).should be_true
      end
    end
  end
end
