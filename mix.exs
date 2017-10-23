defmodule EveYL.Mixfile do
  use Mix.Project

  def project do
    [
      app: :eveyl,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      applications: [:logger, :ecto, :mariaex, :yamerl],
      mod: {EveYL, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
      {:ecto, "~> 2.0"},
      {:mariaex, "~> 0.7"},
      {:yaml_elixir, "~> 1.3.1"}
    ]
  end
end
