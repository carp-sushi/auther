defmodule Auther.Router do
  use Plug.Router

  plug(Auther.Verify)
  plug(:match)
  plug(:dispatch)

  match _ do
    IO.inspect(conn.assigns.claims, label: "claims")
    send_resp(conn, 200, "")
  end
end
