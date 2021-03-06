defmodule IdiotSon.MixProject do
  use Mix.Project

  def project do
    [
      app: :idiot_son,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:twittex, "~> 0.3.6"}
    ]
  end

  defp aliases do
    [
      latest: ["run -e IdiotSon.latest"]
    ]
  end
end
