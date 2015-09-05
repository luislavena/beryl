require "../spec_helper"

private def counting_router
  Fixtures::CountingRouter.new
end

private def empty_router
  Fixtures::EmptyRouter.new
end

private def single_router
  Fixtures::SingleRouter.new
end

private def multi_router
  Fixtures::MultiRouter.new
end

describe Beryl::Router do
  describe "#call" do
    context "given no routes" do
      it "returns not found" do
        router = empty_router
        request = make_request("GET", "/")

        response = router.call(request)
        response.status_code.should eq(404)
      end
    end

    context "given a single route defined" do
      it "does not invoke defined route when request do not match" do
        Fixtures::CountingAction.reset!

        router = counting_router
        request = make_request("GET", "/bogus")
        response = router.call(request)

        Fixtures::CountingAction.counter.should eq(0)
      end

      it "invokes defined route when matching" do
        Fixtures::CountingAction.reset!

        router = counting_router
        request = make_request("POST", "/count")
        response = router.call(request)

        Fixtures::CountingAction.counter.should eq(1)
      end
    end
  end

  describe "#lookup" do
    context "given no routes" do
      it "does not find any route matching" do
        router = empty_router
        request = make_request("GET", "/")

        router.lookup(request).should be_nil
      end
    end

    context "given a single route defined" do
      it "does not find when request do not match" do
        router = single_router
        request = make_request("GET", "/bogus")

        router.lookup(request).should be_nil
      end

      it "returns the route when matching" do
        router = single_router
        request = make_request("GET", "/single")

        router.lookup(request).should eq(router.routes.first)
      end
    end

    context "given multiple routes defined" do
      it "does not find when request do not match" do
        router = multi_router
        request = make_request("POST", "/bogus")

        router.lookup(request).should be_nil
      end

      it "returns the route when matching" do
        router = multi_router
        request = make_request("GET", "/products/456")

        router.lookup(request).should eq(router.routes[2])
      end
    end
  end

  describe "#routes" do
    context "given no routes" do
      it "exposes an empty list" do
        router = empty_router

        router.routes.empty?.should be_true
      end
    end

    context "given a single route defined" do
      it "exposes the route defined" do
        router = single_router

        router.routes.empty?.should_not be_true
        router.routes.size.should eq(1)
      end
    end
  end
end
