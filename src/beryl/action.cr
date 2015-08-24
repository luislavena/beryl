module Beryl
  abstract class Action
    macro inherited
      property :request

      def self.call(request, params)
        instance = new
        instance.request = request
        instance.call(params)
      end
    end

    abstract def call(params) : HTTP::Response
  end
end
