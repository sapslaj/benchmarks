defmodule HttpgethelloworldWeb.Router do
  alias HttpgethelloworldWeb.PageController
  use HttpgethelloworldWeb, :router

  get "/", PageController, :root
end
