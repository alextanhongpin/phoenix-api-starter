# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :dood,
  ecto_repos: [Dood.Repo],
  generators: [binary_id: true]

# Add support for microseconds at DB level.
# This avoids having to configure it on every migration file.
config :dood, Dood.Repo, migration_timestamps: [type: :utc_datetime_usec]

# Configures the endpoint
config :dood, DoodWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "bPV69djL85xR8WDDZyoTcq970Rf0exXm0LzDJaIdvtS8wPbUeq2aKXUPbm9VVl55",
  render_errors: [view: DoodWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Dood.PubSub,
  live_view: [signing_salt: "mS4QP1B5"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
