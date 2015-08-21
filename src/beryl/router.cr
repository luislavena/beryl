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

    # TODO: Determine if can be simplified with a single macro
    macro delete(pattern, klass)
      _add_route("DELETE", {{pattern}}, {{klass}})
    end

    macro get(pattern, klass)
      _add_route("GET", {{pattern}}, {{klass}})
    end

    macro options(pattern, klass)
      _add_route("OPTIONS", {{pattern}}, {{klass}})
    end

    macro patch(pattern, klass)
      _add_route("PATCH", {{pattern}}, {{klass}})
    end

    macro post(pattern, klass)
      _add_route("POST", {{pattern}}, {{klass}})
    end

    macro put(pattern, klass)
      _add_route("PUT", {{pattern}}, {{klass}})
    end

    # internal
    macro _add_route(method, pattern, klass)
      @routes << Beryl::Route.new({{method}}, {{pattern}}, {{klass}})
    end
  end
end
