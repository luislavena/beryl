require "cgi"

module Beryl
  module Utils
    struct CompiledPattern
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

      def extract_params(request)
        params = {} of String => String

        uri = request.uri

        if match = @compiled.match(uri.path.to_s)
          _collect_names(match, params)
          _collect_query(uri.query.to_s, params)
        end

        params
      end

      def matches?(request)
        @compiled.match(request.uri.path.to_s) ? true : false
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

        CGI.parse(query) do |key, value|
          next if key.empty?

          params[key] = value
        end
      end
    end
  end
end
