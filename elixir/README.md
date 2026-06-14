# garudadidada (Elixir)

Tiny, zero-dependency Elixir helpers to humanize values: byte sizes, durations,
English ordinals, and pluralization. No dependencies.

## Install

```elixir
def deps do
  [{:garudadidada, "~> 1.0"}]
end
```

## Usage

```elixir
Garudadidada.format_bytes(1536)        # "1.5 KB"
Garudadidada.format_duration(90_061)   # "1d 1h 1m 1s"
Garudadidada.ordinal(22)               # "22nd"
Garudadidada.pluralize(3, "file")      # "3 files"
Garudadidada.pluralize(2, "person", "people") # "2 people"
```

## API

- `format_bytes(bytes)` — binary (1024) units, B..YB.
- `format_duration(seconds)` — splits into d/h/m/s, omits zero parts.
- `ordinal(n)` — English ordinal suffix (handles 11-13).
- `pluralize(count, singular, plural \\ nil)` — picks form by count.

## License

MIT
