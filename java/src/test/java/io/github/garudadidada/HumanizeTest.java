package io.github.garudadidada;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;

class HumanizeTest {

    @Test
    void formatBytes() {
        assertEquals("0 B", Humanize.formatBytes(0));
        assertEquals("500 B", Humanize.formatBytes(500));
        assertEquals("1 KB", Humanize.formatBytes(1024));
        assertEquals("1.5 KB", Humanize.formatBytes(1536));
        assertEquals("1 MB", Humanize.formatBytes(1048576));
        assertEquals("1 GB", Humanize.formatBytes(1073741824L));
    }

    @Test
    void formatDuration() {
        assertEquals("0s", Humanize.formatDuration(0));
        assertEquals("45s", Humanize.formatDuration(45));
        assertEquals("1m 30s", Humanize.formatDuration(90));
        assertEquals("1h 1m 1s", Humanize.formatDuration(3661));
        assertEquals("1d 1h 1m 1s", Humanize.formatDuration(90061));
    }

    @Test
    void ordinal() {
        assertEquals("1st", Humanize.ordinal(1));
        assertEquals("12th", Humanize.ordinal(12));
        assertEquals("21st", Humanize.ordinal(21));
        assertEquals("22nd", Humanize.ordinal(22));
        assertEquals("101st", Humanize.ordinal(101));
        assertEquals("111th", Humanize.ordinal(111));
    }

    @Test
    void pluralize() {
        assertEquals("1 file", Humanize.pluralize(1, "file"));
        assertEquals("3 files", Humanize.pluralize(3, "file"));
        assertEquals("2 people", Humanize.pluralize(2, "person", "people"));
    }
}
