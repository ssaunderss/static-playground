defmodule StaticPlayground.Router do
  use Plug.Router
  use Plug.Debugger

  require Logger

  plug(Plug.Logger, log: :debug)
  plug(:match)
  plug(:dispatch)

  forward("/", to: StaticPlayground.StaticPlug)
end
