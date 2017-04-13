defmodule TgEmulator.Router do
  use Plug.Router

  plug :match
  plug :dispatch

  get "/" do
    send_resp(conn, 200, "Hi there, I love !")
  end

  get "/:key" do
    send_resp(conn, 200, "Hi there, I love " <> key <> "!")
  end

end
