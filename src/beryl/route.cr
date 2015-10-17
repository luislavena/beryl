require "./utils/compiled_pattern"

module Beryl
  # A Route represents the mapping between HTTP verbs, patterns and the
  # associated Action.
  #
  # It is used internally by `Router` to build an application's routing
  # table.
  #
  # Example:
  # ```
  # route   = Beryl::Route.new("GET", "/", Hello)
  # request = HTTP::Request.new("GET", "/")
  #
  # route.matches?(request)
  # # => true
  #
  # route.call(request)
  # # => #<HTTP::Response:... @status_code=200, @body="Hello!" ...>
  # ```
  struct Route
    # Instantiate a Route
    #
    # All arguments are required:
    # * `method` - HTTP verb for the action (eg. `GET`, `PUT`, etc.)
    # * `pattern` - `String` that can also define named segments (see `Utils::CompiledPattern`)
    # * `action` - Class that inherits from `Action`
    def initialize(@method, @pattern, @action)
      @compiled_pattern = Utils::CompiledPattern.new(@pattern)
    end

    # Returns an `HTTP::Response` as result of invoking defined Action.
    #
    # **Note:** No verification against HTTP method or pattern is performed,
    # is expected to check result of `matches?` before.
    def call(request)
      params = @compiled_pattern.extract_params(request)
      @action.call(request, params)
    end

    # Returns true if both method and pattern of the request matches the
    # Route.
    #
    # Example:
    # ```
    # route   = Beryl::Route.new("POST", "/products", CreateProduct)
    # request = HTTP::Request.new("GET", "/products")
    #
    # route.matches?(request)
    # # => false
    # ```
    def matches?(request)
      return false unless request.method == @method

      @compiled_pattern.matches?(request)
    end
  end
end
