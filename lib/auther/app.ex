defmodule Auther.App do
  @moduledoc false

  use Application
  require Logger

  @impl true
  def start(_type, _args) do
    children = [
      {Plug.Cowboy, scheme: :http, plug: Auther.Router, options: [port: 4001]}
    ]

    Logger.info("Starting auther application...")

    Supervisor.start_link(
      children,
      strategy: :one_for_one,
      name: Auther.Supervisor
    )
  end
end
