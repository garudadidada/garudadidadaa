# garudadidada (Java)

Tiny, zero-dependency Java helpers to humanize values: byte sizes, durations,
English ordinals, and pluralization. Java 8+, no runtime dependencies.

## Install (Maven)

```xml
<dependency>
  <groupId>io.github.garudadidada</groupId>
  <artifactId>garudadidada</artifactId>
  <version>1.0.0</version>
</dependency>
```

## Usage

```java
import io.github.garudadidada.Humanize;

Humanize.formatBytes(1536);              // "1.5 KB"
Humanize.formatDuration(90061);          // "1d 1h 1m 1s"
Humanize.ordinal(22);                    // "22nd"
Humanize.pluralize(3, "file");           // "3 files"
Humanize.pluralize(2, "person", "people"); // "2 people"
```

## API

- `static String formatBytes(long bytes)` — binary (1024) units, B..YB.
- `static String formatDuration(long seconds)` — splits into d/h/m/s, omits zero parts.
- `static String ordinal(int n)` — English ordinal suffix (handles 11-13).
- `static String pluralize(int count, String singular[, String plural])` — picks form by count.

## License

MIT
