# garudadidada

Tiny, zero-dependency Ruby helpers to humanize values: byte sizes, durations,
English ordinals, and pluralization. Pure Ruby, no dependencies.

## Install

```bash
gem install garudadidada
```

Or in a Gemfile:

```ruby
gem "garudadidada"
```

## Usage

```ruby
require "garudadidada"

Garudadidada.format_bytes(1536)        # "1.5 KB"
Garudadidada.format_duration(90061)    # "1d 1h 1m 1s"
Garudadidada.ordinal(22)               # "22nd"
Garudadidada.pluralize(3, "file")      # "3 files"
```

## API

- `format_bytes(bytes)` — binary (1024) units, B..YB.
- `format_duration(seconds)` — splits into d/h/m/s, omits zero parts.
- `ordinal(n)` — English ordinal suffix (handles 11-13).
- `pluralize(count, singular, plural = nil)` — picks form by count; defaults plural to `"#{singular}s"`.

## License

MIT
