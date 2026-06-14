defmodule GarudadidadaTest do
  use ExUnit.Case
  doctest Garudadidada

  test "format_bytes" do
    assert Garudadidada.format_bytes(0) == "0 B"
    assert Garudadidada.format_bytes(500) == "500 B"
    assert Garudadidada.format_bytes(1024) == "1 KB"
    assert Garudadidada.format_bytes(1536) == "1.5 KB"
    assert Garudadidada.format_bytes(1_048_576) == "1 MB"
    assert Garudadidada.format_bytes(1_073_741_824) == "1 GB"
  end

  test "format_duration" do
    assert Garudadidada.format_duration(0) == "0s"
    assert Garudadidada.format_duration(45) == "45s"
    assert Garudadidada.format_duration(90) == "1m 30s"
    assert Garudadidada.format_duration(3661) == "1h 1m 1s"
    assert Garudadidada.format_duration(90_061) == "1d 1h 1m 1s"
  end

  test "ordinal" do
    assert Garudadidada.ordinal(1) == "1st"
    assert Garudadidada.ordinal(2) == "2nd"
    assert Garudadidada.ordinal(3) == "3rd"
    assert Garudadidada.ordinal(11) == "11th"
    assert Garudadidada.ordinal(12) == "12th"
    assert Garudadidada.ordinal(13) == "13th"
    assert Garudadidada.ordinal(21) == "21st"
    assert Garudadidada.ordinal(22) == "22nd"
    assert Garudadidada.ordinal(101) == "101st"
    assert Garudadidada.ordinal(111) == "111th"
  end

  test "pluralize" do
    assert Garudadidada.pluralize(1, "file") == "1 file"
    assert Garudadidada.pluralize(3, "file") == "3 files"
    assert Garudadidada.pluralize(2, "person", "people") == "2 people"
  end
end
