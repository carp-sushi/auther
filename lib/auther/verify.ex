defmodule Auther.Verify do
  import Plug.Conn

  def init(opts), do: opts

  #
  # TODO: Can we pull api_key from header and look up signer for that?
  #
  def call(conn, _opts) do
    conn
    |> get_auth_header
    |> authorize
  end

  defp get_auth_header(conn) do
    case get_req_header(conn, "authorization") do
      [header] -> {conn, header}
      _ -> {conn}
    end
  end

  defp authorize({conn, "Bearer " <> token}) do
    case Auther.Token.verify_and_validate(token) do
      {:ok, claims} -> assign(conn, :claims, claims)
      {:error, _err} -> send_401(conn)
    end
  end

  defp authorize({conn}) do
    send_401(conn)
  end

  defp send_401(conn) do
    conn
    |> send_resp(401, "")
    |> halt
  end
end
