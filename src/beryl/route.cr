require "./utils/compiled_pattern"

module Beryl
  struct Route
    def initialize(@method, @pattern, @action)
      @compiled_pattern = Utils::CompiledPattern.new(@pattern)
    end

    def call(request)
      params = @compiled_pattern.extract_params(request)
      @action.call(request, params)
    end

    def matches?(request)
      return false unless request.method == @method

      @compiled_pattern.matches?(request)
    end
  end
end
