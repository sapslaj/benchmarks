# This file is responsible for configuring your application
# and its dependencies with the aid of the Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

# Configures the endpoint
config :httpgethelloworld, HttpgethelloworldWeb.Endpoint,
  url: [host: "localhost"],
  render_errors: [
    formats: [json: HttpgethelloworldWeb.ErrorJSON],
    layout: false
  ],
  pubsub_server: Httpgethelloworld.PubSub,
  live_view: [signing_salt: "YrLXjibF"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :httpgethelloworld, HttpgethelloworldWeb.Endpoint,
  # Binding to loopback ipv4 address prevents access from other machines.
  # Change to `ip: {0, 0, 0, 0}` to allow access from other machines.
  http: [ip: {127, 0, 0, 1}, port: 8080],
  check_origin: false,
  code_reloader: true,
  debug_errors: true,
  secret_key_base: "ov2cXYEjBjJZY3ktIs4eLNynD/Yh8eUxA5ZaCj9gIYFDOXSqL1z3Xwb1TubT93ZM",
  watchers: []
