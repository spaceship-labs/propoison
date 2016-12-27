# Propoison

## Installation

  1. Add propoison to your list of dependencies in mix.exs:

```elixir

        def deps do
            [{:propoison, github: "urielaero/propoison", tag: "v0.1.0"}]
        end
        
        def application do
            [ applications: [:propoison] ]
            # Application dependency auto-starts it, otherwise: Propoison.Facebook.start
        end
```

## Test

export FB_TOKEN="YOUR_FACEBOOK_TOKEN"

mix test
