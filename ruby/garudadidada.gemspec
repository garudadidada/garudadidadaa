# frozen_string_literal: true

require_relative "lib/garudadidada/version"

Gem::Specification.new do |spec|
  spec.name        = "garudadidada"
  spec.version     = Garudadidada::VERSION
  spec.authors     = ["garudadidada"]
  spec.summary     = "Tiny zero-dependency helpers to humanize values."
  spec.description = "Humanize byte sizes, durations, English ordinals and " \
                     "pluralization. Zero dependencies, pure Ruby."
  spec.homepage    = "https://github.com/garudadidada/garudadidadaa"
  spec.license     = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.files         = Dir["lib/**/*.rb"] + ["README.md", "LICENSE"]
  spec.require_paths = ["lib"]

  spec.metadata = {
    "homepage_uri"    => spec.homepage,
    "source_code_uri" => spec.homepage
  }
end
