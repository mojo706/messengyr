# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :messengyr,
  ecto_repos: [Messengyr.Repo]

# Configures the endpoint
config :messengyr, MessengyrWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "v4HC4/dQqzEQEqoLdqZ2iIwY4Ii0G5h9lFVXQCiVI4wtbvu4roIEIuryqQY5DpXG",
  render_errors: [view: MessengyrWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Messengyr.PubSub,
  live_view: [signing_salt: "A7pLHWOf"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
