module Beryl
  # Actions are the endpoint that responds to incoming HTTP requests with
  # proper HTTP responses.
  #
  # Example:
  #
  # ```
  # class Hello < Beryl::Action
  #   def call(params)
  #     HTTP::Response.ok "text/plain", "Hello!"
  #   end
  # end
  # ```
  abstract class Action
    macro inherited
      property :request

      # :nodoc:
      def self.call(request, params)
        instance = new
        instance.request = request
        instance.call(params)
      end
    end

    # Returns an `HTTP::Response` as result of the action invocation.
    #
    # **Must** be implemented by you and is expected to take `params` (in the
    # form of `Hash(String, String)`) and always return an `HTTP::Response`.
    #
    # Example:
    #
    # ```
    # class ShowProduct < Beryl::Action
    #   def call(params)
    #     if params["id"] == "100"
    #       HTTP::Response.ok "text/plain", "Found!"
    #     else
    #       HTTP::Response.not_found
    #     end
    #   end
    # end
    # ```
    abstract def call(params) : HTTP::Response
  end
end
