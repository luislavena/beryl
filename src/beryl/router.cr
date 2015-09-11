require "./route"
require "http/server"

module Beryl
  # A Router defines the entrypoint and dispatcher of actions based on the
  # incoming requests received.
  #
  # It offers a simple DSL that supports most of the HTTP verbs:
  #
  # ```
  # class Products < Beryl::Router
  #   routing do
  #     get     "/",    Products::Index
  #     post    "/",    Products::Create
  #     put     "/:id", Products::Update
  #     delete  "/:id", Products::Destroy
  #     options "/",    Products::CORS
  #   end
  # end
  # ```
  #
  # Routers provide organization blocks for actions and are directly
  # compatible with Crystal's `HTTP::Handler` middleware implementation:
  #
  # ```
  # handlers = [
  #   HTTP::LogHandler.new,
  #   HTTP::ExceptionHandler.new,
  #   Products.new
  # ]
  #
  # server = HTTP::Server.new(8080, handlers)
  # server.listen
  # ```
  #
  # Routers are defined within the class definition, see `routing` for more
  # details.
  #
  # A Router must be instantiated in order to be used in all cases
  # (standalone or within a middleware stack).
  abstract class Router < HTTP::Handler
    # Provides easy access and inspection to defined routes.
    getter :routes

    # Initialize the router.
    def initialize
      @routes = [] of Beryl::Route
      populate_routes
    end

    # Returns an `HTTP::Response` as result of finding and invoking the
    # matching action.
    #
    # In case of not finding a matching route for the given request, it
    # will pass it down the handler chain.
    #
    # At this point is where the request received is dispatched into the
    # action you defined.
    #
    # Routes are evaluated secuentially for matches, so priority is
    # important when defining them. Is recommended you define the shorter
    # routes before the specific ones (ie. route for Home before Products).
    def call(request)
      if route = lookup(request)
        route.call(request)
      else
        call_next(request)
      end
    end

    # Return the `Route` instance that matches the supplied request.
    #
    # Example:
    # ```
    # class App < Beryl::Router
    #   routing do
    #     get "/", Home
    #   end
    # end
    #
    # router  = App.new
    # request = HTTP::Request.new "GET", "/"
    #
    # router.lookup(request)
    # # => #<Beryl::Route:... @action=Home ...>
    # ```
    def lookup(request)
      @routes.find { |route| route.matches?(request) }
    end

    # :nodoc:
    private def populate_routes
    end

    # Provides a DSL to define routes.
    #
    # The following is the list of supported HTTP verbs via its helpers:
    #
    # * `get(pattern, action)` - Defines a route that accepts a GET request.
    # * `post(pattern, action)` - Defines a route that accepts a POST request.
    # * `patch(pattern, action)` - Defines a route that accepts a PATCH request.
    # * `put(pattern, action)` - Defines a route that accepts a PUT request.
    # * `delete(pattern, action)` - Defines a route that accepts a DELETE request.
    #
    # `pattern` refers to a `Strign` that indicates the matching path from
    # request. This pattern can define a simple path (eg. `/products`) or one
    # with named segments (eg. `/products/:id`). Named segments are extracted
    # from the request and accesible to the action via `params`.
    #
    # `action` refers to a class that inherits from `Beryl::Action`. On each
    # matching request, a new instance of the action is created to process
    # the request.
    #
    # Example:
    #
    # ```
    # class App < Beryl::Router
    #   routing do
    #     get "/products/:id", ShowProduct
    #   end
    # end
    # ```
    #
    # In above example, `:id` will be extracted from the request path and
    # provided to the action as `id` via `params`.
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
