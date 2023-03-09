defmodule StaticPlayground.StaticPlug do
  use Plug.Builder

  plug(Plug.Static, at: "/", from: {:static_playground, "priv/static"})
  plug(:not_found)

  def not_found(conn, _) do
    send_resp(conn, 404, "not found")
  end
end
