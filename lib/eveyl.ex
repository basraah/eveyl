defmodule EveYL do
  @moduledoc """
  Documentation for EveYL, Eveyamlloader.
  """
  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      # Start the endpoint when the application starts
      #supervisor(HelloPhoenix.Endpoint, []),
      # Start the Ecto repository
      supervisor(EveYL.Schema, []),
      # Here you could define other workers and supervisors as children
      # worker(HelloPhoenix.Worker, [arg1, arg2, arg3]),
    ]

    # See http://elixir-lang.org/docs/stable/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: EveYL.Supervisor]
    Supervisor.start_link(children, opts)
  end

  def parse do
    Application.fetch_env!(:eveyl, :run_parsers) |> parse
  end

  def parse([head | tail]) do
    EveYL.Parse.Sde.parse(head)
    parse(tail)
  end
  def parse([]), do: IO.puts("End of list")
end
