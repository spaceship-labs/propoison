# Propoison

## Installation

  1. Add propoison to your list of dependencies in mix.exs:

        def deps do
          [{:propoison, "~> 0.0.1"}]
        end

  2. Ensure propoison is started before your application:

        def application do
          [applications: [:propoison]]
        end
