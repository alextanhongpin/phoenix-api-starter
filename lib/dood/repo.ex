defmodule Dood.Repo do
  use Ecto.Repo,
    otp_app: :dood,
    adapter: Ecto.Adapters.Postgres
end
