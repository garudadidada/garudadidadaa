defmodule Garudadidada.MixProject do
  use Mix.Project

  def project do
    [
      app: :garudadidada,
      version: "1.0.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package(),
      name: "garudadidada",
      source_url: "https://github.com/garudadidada/garudadidadaa"
    ]
  end

  def application do
    [extra_applications: [:logger]]
  end

  defp deps do
    [
      # Uncomment to generate docs for hexdocs.pm on publish:
      # {:ex_doc, "~> 0.31", only: :dev, runtime: false}
    ]
  end

  defp description do
    "Tiny zero-dependency helpers to humanize values: bytes, durations, ordinals, pluralization."
  end

  defp package do
    [
      licenses: ["MIT"],
      maintainers: ["garudadidada"],
      links: %{"GitHub" => "https://github.com/garudadidada/garudadidadaa"}
    ]
  end
end
