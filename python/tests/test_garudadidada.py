from garudadidada import format_bytes, format_duration, ordinal, pluralize


def test_format_bytes():
    assert format_bytes(0) == "0 B"
    assert format_bytes(500) == "500 B"
    assert format_bytes(1024) == "1 KB"
    assert format_bytes(1536) == "1.5 KB"
    assert format_bytes(1048576) == "1 MB"
    assert format_bytes(1073741824) == "1 GB"


def test_format_duration():
    assert format_duration(0) == "0s"
    assert format_duration(45) == "45s"
    assert format_duration(90) == "1m 30s"
    assert format_duration(3661) == "1h 1m 1s"
    assert format_duration(90061) == "1d 1h 1m 1s"


def test_ordinal():
    assert ordinal(1) == "1st"
    assert ordinal(2) == "2nd"
    assert ordinal(3) == "3rd"
    assert ordinal(4) == "4th"
    assert ordinal(11) == "11th"
    assert ordinal(12) == "12th"
    assert ordinal(13) == "13th"
    assert ordinal(21) == "21st"
    assert ordinal(22) == "22nd"
    assert ordinal(101) == "101st"
    assert ordinal(111) == "111th"


def test_pluralize():
    assert pluralize(1, "file") == "1 file"
    assert pluralize(3, "file") == "3 files"
    assert pluralize(1, "file", "files") == "1 file"
    assert pluralize(2, "person", "people") == "2 people"
