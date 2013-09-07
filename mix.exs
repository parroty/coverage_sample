defmodule CoverageSample.Mixfile do
  use Mix.Project

  def project do
    [ app: :coverage_sample,
      version: "0.0.1",
      elixir: "~> 0.10.3-dev",
      deps: deps,
      env: [
        coveralls_travis:  [test_coverage: [tool: ExCoveralls, type: "travis"]],
        coveralls_local:   [test_coverage: [tool: ExCoveralls, type: "local"]]
      ]
    ]
  end

  # Configuration for the OTP application
  def application do
    []
  end

  # Returns the list of dependencies in the format:
  # { :foobar, "~> 0.1", git: "https://github.com/elixir-lang/foobar.git" }
  defp deps do
    [
      {:excoveralls, github: "parroty/excoveralls"}
    ]
  end
end
