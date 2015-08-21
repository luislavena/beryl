require "./route"
require "http/server"

module Beryl
  abstract class Router < HTTP::Handler
    getter :routes

    def initialize
      @routes = [] of Beryl::Route
      populate_routes
    end

    def call(request)
      if route = lookup(request)
        invoke_action(request, route)
      else
        call_next(request)
      end
    end

    # TODO: relocate as `route.call(request)`
    private def invoke_action(request, route)
      action = route.action.new(request)
      params = route.extract_params(request)
      action.call(params)
    end

    def lookup(request)
      @routes.find { |route| route.matches?(request) }
    end

    # DSL

    # TODO: Workaround until class-variables work
    private def populate_routes
    end

    macro routing
      private def populate_routes
        {{yield}}
      end
    end

    {% for method in %w(DELETE GET OPTIONS PATCH POST PUT) %}
      # :nodoc:
      macro {{method.id.downcase}}(pattern, klass)
        _add_route({{method}}, \{{pattern}}, \{{klass}})
      end
    {% end %}

    # :nodoc:
    macro _add_route(method, pattern, klass)
      @routes << Beryl::Route.new({{method}}, {{pattern}}, {{klass}})
    end
  end
end
