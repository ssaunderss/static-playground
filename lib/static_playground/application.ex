defmodule StaticPlayground.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      Plug.Adapters.Cowboy.child_spec(
        scheme: :http,
        plug: StaticPlayground.Router,
        options: [
          port: 4001
        ]
      )
      # Starts a worker by calling: StaticPlayground.Worker.start_link(arg)
      # {StaticPlayground.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: StaticPlayground.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
