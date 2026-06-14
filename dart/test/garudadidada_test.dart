import 'package:garudadidada/garudadidada.dart';
import 'package:test/test.dart';

void main() {
  test('formatBytes', () {
    expect(formatBytes(0), '0 B');
    expect(formatBytes(500), '500 B');
    expect(formatBytes(1024), '1 KB');
    expect(formatBytes(1536), '1.5 KB');
    expect(formatBytes(1048576), '1 MB');
    expect(formatBytes(1073741824), '1 GB');
  });

  test('formatDuration', () {
    expect(formatDuration(0), '0s');
    expect(formatDuration(45), '45s');
    expect(formatDuration(90), '1m 30s');
    expect(formatDuration(3661), '1h 1m 1s');
    expect(formatDuration(90061), '1d 1h 1m 1s');
  });

  test('ordinal', () {
    expect(ordinal(1), '1st');
    expect(ordinal(2), '2nd');
    expect(ordinal(3), '3rd');
    expect(ordinal(11), '11th');
    expect(ordinal(12), '12th');
    expect(ordinal(13), '13th');
    expect(ordinal(21), '21st');
    expect(ordinal(22), '22nd');
    expect(ordinal(101), '101st');
    expect(ordinal(111), '111th');
  });

  test('pluralize', () {
    expect(pluralize(1, 'file'), '1 file');
    expect(pluralize(3, 'file'), '3 files');
    expect(pluralize(2, 'person', 'people'), '2 people');
  });
}
