# humanize

Tiny, zero-dependency Go helpers to humanize values: byte sizes, durations,
English ordinals, and pluralization. Standard library only.

## Install

```bash
go get github.com/garudadidada/humanize
```

## Usage

```go
package main

import (
	"fmt"

	"github.com/garudadidada/humanize"
)

func main() {
	fmt.Println(humanize.FormatBytes(1536))             // 1.5 KB
	fmt.Println(humanize.FormatDuration(90061))         // 1d 1h 1m 1s
	fmt.Println(humanize.Ordinal(22))                   // 22nd
	fmt.Println(humanize.Pluralize(3, "file", "files")) // 3 files
}
```

## API

- `FormatBytes(bytes int64) string` — binary (1024) units, B..YB.
- `FormatDuration(seconds int64) string` — splits into d/h/m/s, omits zero parts.
- `Ordinal(n int) string` — English ordinal suffix (handles 11-13).
- `Pluralize(count int, singular, plural string) string` — picks form by count.

## License

MIT
