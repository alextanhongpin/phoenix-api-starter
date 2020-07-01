defmodule DoodWeb.PageController do
  use DoodWeb, :controller

  def index(conn, _params) do
    json conn, %{status: "ok"}
  end
end
