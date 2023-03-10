defmodule Auther.MixProject do
  use Mix.Project

  def project do
    [
      app: :auther,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Auther.App, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:plug_cowboy, "~> 2.0"},
      {:joken, "~> 2.6"},
      {:jason, "~> 1.3"}
    ]
  end
end
