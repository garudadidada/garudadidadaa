# frozen_string_literal: true

require "minitest/autorun"
require_relative "../lib/garudadidada"

class TestGarudadidada < Minitest::Test
  def test_format_bytes
    assert_equal "0 B", Garudadidada.format_bytes(0)
    assert_equal "500 B", Garudadidada.format_bytes(500)
    assert_equal "1 KB", Garudadidada.format_bytes(1024)
    assert_equal "1.5 KB", Garudadidada.format_bytes(1536)
    assert_equal "1 MB", Garudadidada.format_bytes(1_048_576)
    assert_equal "1 GB", Garudadidada.format_bytes(1_073_741_824)
  end

  def test_format_duration
    assert_equal "0s", Garudadidada.format_duration(0)
    assert_equal "45s", Garudadidada.format_duration(45)
    assert_equal "1m 30s", Garudadidada.format_duration(90)
    assert_equal "1h 1m 1s", Garudadidada.format_duration(3661)
    assert_equal "1d 1h 1m 1s", Garudadidada.format_duration(90_061)
  end

  def test_ordinal
    assert_equal "1st", Garudadidada.ordinal(1)
    assert_equal "2nd", Garudadidada.ordinal(2)
    assert_equal "3rd", Garudadidada.ordinal(3)
    assert_equal "11th", Garudadidada.ordinal(11)
    assert_equal "12th", Garudadidada.ordinal(12)
    assert_equal "13th", Garudadidada.ordinal(13)
    assert_equal "21st", Garudadidada.ordinal(21)
    assert_equal "22nd", Garudadidada.ordinal(22)
    assert_equal "101st", Garudadidada.ordinal(101)
    assert_equal "111th", Garudadidada.ordinal(111)
  end

  def test_pluralize
    assert_equal "1 file", Garudadidada.pluralize(1, "file")
    assert_equal "3 files", Garudadidada.pluralize(3, "file")
    assert_equal "2 people", Garudadidada.pluralize(2, "person", "people")
  end
end
