# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :medium_clone,
  ecto_repos: [MediumClone.Repo]

# Configures the endpoint
config :medium_clone, MediumCloneWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Mv7KOh8VEi2V/hXWTDQZQK00iPwx/9Tx4GFcSF1Y9aLmkgcH6UHxhER5cDf4g3+r",
  render_errors: [view: MediumCloneWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: MediumClone.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
