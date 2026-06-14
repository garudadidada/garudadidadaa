# garudadidada

Tiny, zero-dependency helpers to humanize values: byte sizes, durations,
English ordinals, and pluralization. Pure Python, no dependencies.

## Install

```bash
pip install garudadidada
```

## Usage

```python
from garudadidada import format_bytes, format_duration, ordinal, pluralize

format_bytes(1536)        # "1.5 KB"
format_bytes(1073741824)  # "1 GB"

format_duration(90)       # "1m 30s"
format_duration(90061)    # "1d 1h 1m 1s"

ordinal(1)                # "1st"
ordinal(22)               # "22nd"

pluralize(1, "file")              # "1 file"
pluralize(3, "file")              # "3 files"
pluralize(2, "person", "people")  # "2 people"
```

## API

- `format_bytes(num_bytes)` — binary (1024) units, B..YB.
- `format_duration(seconds)` — splits into d/h/m/s, omits zero parts.
- `ordinal(n)` — English ordinal suffix (handles 11-13).
- `pluralize(count, singular, plural=None)` — picks form by count; defaults plural to `singular + "s"`.

## License

MIT
