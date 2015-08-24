require "../../spec_helper"

private def compile_pattern(path)
  Beryl::Utils::CompiledPattern.new(path)
end

describe Beryl::Utils::CompiledPattern do
  describe "#extract_params" do
    context "with no placeholder or query option" do
      it "returns an empty Hash" do
        pattern = compile_pattern "/"
        request = make_request "GET", "/"
        params  = pattern.extract_params(request)

        params.should be_a(Hash)
        params.empty?.should be_true
      end
    end

    context "with matching placeholders" do
      it "returns match inside params" do
        pattern = compile_pattern "/posts/:id"
        request = make_request "GET", "/posts/123-testing"
        params  = pattern.extract_params(request)

        params.empty?.should be_false
        params["id"].should eq("123-testing")
      end

      it "returns multiple matches" do
        pattern = compile_pattern "/posts/:id/actions/:action"
        request = make_request "GET", "/posts/123-testing/actions/refresh"
        params  = pattern.extract_params(request)

        params["id"].should eq("123-testing")
        params["action"].should eq("refresh")
      end
    end

    context "with query parameters" do
      it "includes parsed parameters" do
        pattern = compile_pattern "/"
        request = make_request "GET", "/?foo=10&bar=20"
        params  = pattern.extract_params(request)

        params.empty?.should be_false
        params["foo"].should eq("10")
        params["bar"].should eq("20")
      end
    end
  end
end
