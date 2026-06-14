# Garudadidada (.NET)

Tiny, zero-dependency .NET helpers to humanize values: byte sizes, durations,
English ordinals, and pluralization. Targets netstandard2.0, no dependencies.

## Install

```bash
dotnet add package Garudadidada
```

## Usage

```csharp
using Garudadidada;

Humanize.FormatBytes(1536);                 // "1.5 KB"
Humanize.FormatDuration(90061);             // "1d 1h 1m 1s"
Humanize.Ordinal(22);                       // "22nd"
Humanize.Pluralize(3, "file");              // "3 files"
Humanize.Pluralize(2, "person", "people");  // "2 people"
```

## API

- `static string FormatBytes(long bytes)` — binary (1024) units, B..YB.
- `static string FormatDuration(long seconds)` — splits into d/h/m/s, omits zero parts.
- `static string Ordinal(int n)` — English ordinal suffix (handles 11-13).
- `static string Pluralize(int count, string singular, string? plural = null)` — picks form by count.

## License

MIT
