defmodule Anidiff.MixProject do
  use Mix.Project

  def project do
    [
      app: :anidiff,
      version: "0.1.0",
      elixir: "~> 1.18",
      start_permanent: Mix.env() == :prod,
      escript: escript(),
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Anidiff.Application, []}
    ]
  end

  defp escript do
    [main_module: Anidiff.Release]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:finch, "~> 0.19.0"},
      {:floki, "~> 0.37.0"},
      {:credo, "~> 1.7.11", only: [:dev, :test], runtime: false}
    ]
  end
end
