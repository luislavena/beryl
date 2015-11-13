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
end
