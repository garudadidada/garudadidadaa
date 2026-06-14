# garudadidada (Dart)

Tiny, zero-dependency Dart helpers to humanize values: byte sizes, durations,
English ordinals, and pluralization. No dependencies.

## Install

```yaml
dependencies:
  garudadidada: ^1.0.0
```

## Usage

```dart
import 'package:garudadidada/garudadidada.dart';

formatBytes(1536);              // '1.5 KB'
formatDuration(90061);          // '1d 1h 1m 1s'
ordinal(22);                    // '22nd'
pluralize(3, 'file');           // '3 files'
pluralize(2, 'person', 'people'); // '2 people'
```

## API

- `String formatBytes(int bytes)` — binary (1024) units, B..YB.
- `String formatDuration(int seconds)` — splits into d/h/m/s, omits zero parts.
- `String ordinal(int n)` — English ordinal suffix (handles 11-13).
- `String pluralize(int count, String singular, [String? plural])` — picks form by count.

## License

MIT
