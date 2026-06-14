# garudadidada/garudadidada

Tiny, zero-dependency PHP helpers to humanize values: byte sizes, durations,
English ordinals, and pluralization. No dependencies.

## Install

```bash
composer require garudadidada/garudadidada
```

## Usage

```php
<?php
require 'vendor/autoload.php';

use Garudadidada\Humanize;

echo Humanize::formatBytes(1536);     // 1.5 KB
echo Humanize::formatDuration(90061); // 1d 1h 1m 1s
echo Humanize::ordinal(22);           // 22nd
echo Humanize::pluralize(3, 'file');  // 3 files
```

## API

- `Humanize::formatBytes(int $bytes): string` — binary (1024) units, B..YB.
- `Humanize::formatDuration(int $seconds): string` — splits into d/h/m/s, omits zero parts.
- `Humanize::ordinal(int $n): string` — English ordinal suffix (handles 11-13).
- `Humanize::pluralize(int $count, string $singular, ?string $plural = null): string` — picks form by count.

## License

MIT
