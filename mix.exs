defmodule Openskill.MixProject do
  use Mix.Project

  def project do
    [
      app: :openskill,
      version: "0.1.0",
      elixir: "~> 1.9",
      description: description(),
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def description do
    """
    A Bayesian approximation method for skill-ranking, with online-updates.
    Implementation derived from Weng-Lin with a Plackett-Luce model.
    Unlike TrueSkill, commercial usage does not require a license from Microsoft.
    """
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
      {:mix_test_watch, "~> 1.0", only: :dev, runtime: false},
      {:math, "~> 0.5.0"}
    ]
  end
end