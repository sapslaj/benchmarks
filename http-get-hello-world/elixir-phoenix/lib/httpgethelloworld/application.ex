defmodule Httpgethelloworld.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      HttpgethelloworldWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Httpgethelloworld.PubSub},
      # Start the Endpoint (http/https)
      HttpgethelloworldWeb.Endpoint
      # Start a worker by calling: Httpgethelloworld.Worker.start_link(arg)
      # {Httpgethelloworld.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Httpgethelloworld.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    HttpgethelloworldWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
