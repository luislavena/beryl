module Beryl
  abstract class Action
    getter :request

    def initialize(@request)
    end

    abstract def call(params) : HTTP::Response
  end
end
