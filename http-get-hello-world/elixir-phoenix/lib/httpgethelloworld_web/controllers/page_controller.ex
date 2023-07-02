defmodule HttpgethelloworldWeb.PageController do
  use HttpgethelloworldWeb, :controller

  def root(conn, _params) do
    text(conn, "hello world\n")
  end
end
