require "cgi"

module Beryl
  struct Route
    def initialize(@method, @pattern, @action)
      @names = [] of String
      @compiled_pattern = compile
    end

    def call(request)
      action = @action.new(request)
      params = extract_params(request)
      action.call(params)
    end

    # TODO: Extract to some `Utils` module along with `collect_*`
    def extract_params(request)
      params = {} of String => String

      uri = request.uri

      if match = @compiled_pattern.match(uri.path.to_s)
        collect_names match, params
        collect_query uri.query.to_s, params
      end

      params
    end

    def matches?(request)
      return false unless request.method == @method

      @compiled_pattern.match(request.uri.path.to_s) ? true : false
    end

    private def collect_names(match, params)
      @names.each_with_index do |name, index|
        next unless value = match[index + 1]?

        params[name] = value
      end
    end

    private def collect_query(query, params)
      return if query.empty?

      CGI.parse(query) do |key, value|
        next if key.empty?

        params[key] = value
      end
    end

    private def compile
      prepared = @pattern.gsub(/:\w+/) { |match|
        @names << match[1..-1]

        "([^/?#]+)"
      }

      Regex.new("^#{prepared}$")
    end
  end
end
