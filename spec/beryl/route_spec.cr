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

  describe "#extract_params" do
    context "with no placeholder or query option" do
      it "returns an empty Hash" do
        route = make_route "GET", "/"
        request = make_request "GET", "/"
        params = route.extract_params(request)

        params.should be_a(Hash)
        params.empty?.should be_true
      end
    end

    context "with matching placeholders" do
      it "returns match inside params" do
        route = make_route "GET", "/posts/:id"
        request = make_request "GET", "/posts/123-testing"
        params = route.extract_params(request)

        params.empty?.should be_false
        params["id"].should eq("123-testing")
      end

      it "returns multiple matches" do
        route = make_route "GET", "/posts/:id/actions/:action"
        request = make_request "GET", "/posts/123-testing/actions/refresh"
        params = route.extract_params(request)

        params["id"].should eq("123-testing")
        params["action"].should eq("refresh")
      end
    end

    context "with query parameters" do
      it "includes parsed parameters" do
        route = make_route "GET", "/"
        request = make_request "GET", "/?foo=10&bar=20"
        params = route.extract_params(request)

        params.empty?.should be_false
        params["foo"].should eq("10")
        params["bar"].should eq("20")
      end
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
        match = route.matches?(request)
        match.should be_true
      end
    end
  end
end
