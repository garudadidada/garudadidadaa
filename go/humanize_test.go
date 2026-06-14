package humanize

import "testing"

func TestFormatBytes(t *testing.T) {
	cases := []struct {
		in   int64
		want string
	}{
		{0, "0 B"}, {500, "500 B"}, {1024, "1 KB"}, {1536, "1.5 KB"},
		{1048576, "1 MB"}, {1073741824, "1 GB"},
	}
	for _, c := range cases {
		if got := FormatBytes(c.in); got != c.want {
			t.Errorf("FormatBytes(%d) = %q, want %q", c.in, got, c.want)
		}
	}
}

func TestFormatDuration(t *testing.T) {
	cases := []struct {
		in   int64
		want string
	}{
		{0, "0s"}, {45, "45s"}, {90, "1m 30s"}, {3661, "1h 1m 1s"},
		{90061, "1d 1h 1m 1s"},
	}
	for _, c := range cases {
		if got := FormatDuration(c.in); got != c.want {
			t.Errorf("FormatDuration(%d) = %q, want %q", c.in, got, c.want)
		}
	}
}

func TestOrdinal(t *testing.T) {
	cases := []struct {
		in   int
		want string
	}{
		{1, "1st"}, {2, "2nd"}, {3, "3rd"}, {4, "4th"}, {11, "11th"},
		{12, "12th"}, {13, "13th"}, {21, "21st"}, {22, "22nd"},
		{101, "101st"}, {111, "111th"},
	}
	for _, c := range cases {
		if got := Ordinal(c.in); got != c.want {
			t.Errorf("Ordinal(%d) = %q, want %q", c.in, got, c.want)
		}
	}
}

func TestPluralize(t *testing.T) {
	if got := Pluralize(1, "file", "files"); got != "1 file" {
		t.Errorf("got %q", got)
	}
	if got := Pluralize(3, "file", "files"); got != "3 files" {
		t.Errorf("got %q", got)
	}
}
