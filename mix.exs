defmodule ElixirSup.MixProject do
  use Mix.Project

  def project do
    [
      app: :elixir_sup,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {ElixirSup.Application, []}
    ]
  end

  defp deps do
    [
      {:quantum, "~> 3.5"},
      {:mock, "~> 0.3.7"}
    ]
  end
end
