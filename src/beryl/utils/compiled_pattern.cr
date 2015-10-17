require "http/params"

module Beryl
  module Utils
    # Helper object that provides basic pattern matching and extraction of
    # information from defined named segments.
    #
    # Example:
    #
    # ```
    # compiled = CompiledPattern.new("/products/:category/:id")
    # request  = HTTP::Request.new("GET", "/products/furniture/456-chair")
    #
    # compiled.matches?(request)
    # # => true
    # params = compiled.extract_params(request)
    # # => { "category" => "furniture", "id" => "456-chair" }
    # ```
    #
    # It will also extract information given as query parameters in the URL:
    #
    # ```
    # compiled = CompiledPattern.new("/products")
    # request  = HTTP::Request.new("GET", "/products?sort=date")
    #
    # params = compiled.extract_params(request)
    # # => { "sort" => "date" }
    # ```
    struct CompiledPattern
      # Accepts an `String` as pattern.
      #
      # It compiles the pattern as regular expression (`Regex`) which later
      # will be used for matching purposes.
      #
      # It also collects any given named segment in the pattern that will be
      # returned as parameter.
      #
      # Examples:
      #
      # * A simple path: `"/products"`
      # * A path with a named segment: `"/products/:id"`
      # * A path with multiple named segments: `"/products/:category/:id"`
      def initialize(@pattern)
        @names = [] of String
        @compiled = compile
      end

      # :nodoc:
      private def compile
        prepared = @pattern.gsub(/:\w+/) { |match|
                     @names << match[1..-1]

                     "([^/?#]+)"
                   }

        Regex.new("^#{prepared}$")
      end

      # Returns a Hash with parameters extracted from given Request.
      #
      # Will combine both named segments and query parameters into the
      # resulting Hash.
      #
      # Example:
      #
      # ```
      # compiled = CompiledPattern.new("/products/:category")
      # request  = HTTP::Request.new("GET", "/products/furniture?page=3&sort=date")
      #
      # params = compiled.extract_params(request)
      # # => { "category" => "furniture", "page" => 3, "sort" => "date" }
      # ```
      def extract_params(request)
        params = {} of String => String

        if match = @compiled.match(request.path.to_s)
          _collect_names(match, params)
          _collect_query(request.query.to_s, params)
        end

        params
      end

      # Returns true if `Request#path` matches compiled pattern.
      #
      # It will perform a comparison using `URI#path` to avoid any query
      # parameter or malformed URL affect the comparison.
      #
      # ```
      # compiled = CompiledPattern.new("/products")
      # request  = HTTP::Request.new("GET", "/")
      #
      # compiled.matches?(request)
      # # => false
      # ```
      def matches?(request)
        @compiled.match(request.path.to_s) ? true : false
      end

      # :nodoc:
      private def _collect_names(match, params)
        @names.each_with_index do |name, index|
          next unless value = match[index + 1]?

          params[name] = value
        end
      end

      # :nodoc:
      private def _collect_query(query, params)
        return if query.empty?

        HTTP::Params.parse(query) do |key, value|
          next if key.empty?

          params[key] = value
        end
      end
    end
  end
end
