require "benchmark"
require "http/request"

require "amethyst"
require "artanis"
require "beryl"

EMPTY_RESPONSE = ""

# Amethyst

# HACK: Expose `http_handler`, so we can perform server-less requests
class Amethyst::Base::App
  getter :http_handler
end

class EmptyController < Base::Controller
  actions :hello

  def hello
    html EMPTY_RESPONSE
  end
end

class AmethystApp < Base::App
  routes.draw do
    get "/", "empty_controller#hello"
    get "/posts/:id", "empty_controller#hello"

    {% for idx in 1..100 %}
      get "/comments/{{idx}}", "empty_controller#hello"
    {% end %}

    get "/bottom", "empty_controller#hello"
  end
end

# Use HTTP::Handler compatible endpoint instead of real application instance.
amethyst_app = AmethystApp.new.http_handler

# Artanis

class ArtanisApp < Artanis::Application
  get("/") { EMPTY_RESPONSE }
  get("/posts/:id") { EMPTY_RESPONSE }

  {% for idx in 1..100 %}
    get("/comments/{{idx}}") { EMPTY_RESPONSE }
  {% end %}

  get("/bottom") { EMPTY_RESPONSE }
end

# Beryl

class EmptyAction < Beryl::Action
  MIME_HTML = "text/html"

  def call(params)
    HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
  end
end

class BerylApp < Beryl::Router
  routing do
    get "/", EmptyAction
    get "/posts/:id", EmptyAction

    {% for idx in 1..100 %}
      get "/comments/{{idx}}", EmptyAction
    {% end %}

    get "/bottom", EmptyAction
  end
end

beryl_app = BerylApp.new

# Benchmark

req_root   = HTTP::Request.new("GET", "/")
req_id     = HTTP::Request.new("GET", "/posts/123")
req_middle = HTTP::Request.new("GET", "/comments/50")
req_bottom = HTTP::Request.new("GET", "/bottom")

Benchmark.ips do |x|
  x.report("amethyst (req_root)") { amethyst_app.call(req_root) }
  x.report("artanis (req_root)")  { ArtanisApp.call(req_root) }
  x.report("beryl (req_root)")    { beryl_app.call(req_root) }
end

Benchmark.ips do |x|
  x.report("amethyst (req_id)") { amethyst_app.call(req_id) }
  x.report("artanis (req_id)")  { ArtanisApp.call(req_id) }
  x.report("beryl (req_id)")    { beryl_app.call(req_id) }
end

Benchmark.ips do |x|
  x.report("amethyst (req_middle)") { amethyst_app.call(req_middle) }
  x.report("artanis (req_middle)")  { ArtanisApp.call(req_middle) }
  x.report("beryl (req_middle)")    { beryl_app.call(req_middle) }
end

Benchmark.ips do |x|
  x.report("amethyst (req_bottom)") { amethyst_app.call(req_bottom) }
  x.report("artanis (req_bottom)")  { ArtanisApp.call(req_bottom) }
  x.report("beryl (req_bottom)")    { beryl_app.call(req_bottom) }
end
