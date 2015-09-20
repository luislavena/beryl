# Beryl

[![Build Status](https://travis-ci.org/luislavena/crystal-beryl.svg?branch=master)](https://travis-ci.org/luislavena/crystal-beryl)

Action-focused HTTP routing library for [Crystal](http://crystal-lang.org/)

## Description

Beryl aims to be a small HTTP routing library with focus on direct mapping
between route *paths* and their respective *actions*.

Both `Router` and `Action` design give certain flexibility for testing each
component individually.

It leverages on [Crystal](http://crystal-lang.org/)'s HTTP library and
allows you to integrate it with other middleware to build your final stack.

## Installation

Add it to your project's [shard.yml](https://github.com/ysbaddaden/shards) file:

```yml
dependencies:
  beryl:
    github: luislavena/crystal-beryl
```

## Usage

The following example presents a simpler `Router` that maps the root element of
a request (`/`) to a specific `Action`.

```crystal
class Hello < Beryl::Action
  def call(params)
    HTTP::Response.ok "text/plain", "Hello world!"
  end
end

class App < Beryl::Router
  routing do
    get "/", Hello
  end
end
```

We assume you understand how to use `HTTP::Server` and are comfortable with
using and building `HTTP::Request` and `HTTP::Response` respectively.

You can now place an instance of `App` on your HTTP middleware or be the
single one handler in your stack:

```crystal
server = HTTP::Server.new(8080, App.new)
server.listen
```

Or combine with others:

```crystal
stack = [
  HTTP::LogHandler.new,
  App.new
]

server = HTTP::Server.new(8080, stack)
server.listen
```

You can see other examples in the [samples/](samples/) directory.

## Development

- [x] HTTP Handler integration
- [x] Path/Query parameter extraction
- [x] Router/Route/Action initial design
- [ ] Nested routers (ie. resource specific *mappings*)
- [ ] Optional Response helpers for Action (eg. html, json)
- [ ] Optional conditional rendering (eg. stale, etag, last_modified)

## Contributing

1. Fork it ( https://github.com/luislavena/crystal-beryl/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Luis Lavena](https://github.com/luislavena) - creator, maintainer
