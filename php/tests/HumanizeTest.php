<?php

declare(strict_types=1);

require __DIR__ . '/../src/Humanize.php';

use Garudadidada\Humanize;

$failures = 0;
function check($got, string $want, string $label): void
{
    global $failures;
    if ($got !== $want) {
        fwrite(STDERR, "FAIL $label: got '" . var_export($got, true) . "' want '$want'\n");
        $failures++;
        return;
    }
    echo "ok  $label\n";
}

check(Humanize::formatBytes(0), '0 B', 'bytes(0)');
check(Humanize::formatBytes(500), '500 B', 'bytes(500)');
check(Humanize::formatBytes(1024), '1 KB', 'bytes(1024)');
check(Humanize::formatBytes(1536), '1.5 KB', 'bytes(1536)');
check(Humanize::formatBytes(1048576), '1 MB', 'bytes(1048576)');
check(Humanize::formatBytes(1073741824), '1 GB', 'bytes(1GB)');

check(Humanize::formatDuration(0), '0s', 'dur(0)');
check(Humanize::formatDuration(45), '45s', 'dur(45)');
check(Humanize::formatDuration(90), '1m 30s', 'dur(90)');
check(Humanize::formatDuration(3661), '1h 1m 1s', 'dur(3661)');
check(Humanize::formatDuration(90061), '1d 1h 1m 1s', 'dur(90061)');

check(Humanize::ordinal(1), '1st', 'ord(1)');
check(Humanize::ordinal(2), '2nd', 'ord(2)');
check(Humanize::ordinal(3), '3rd', 'ord(3)');
check(Humanize::ordinal(11), '11th', 'ord(11)');
check(Humanize::ordinal(12), '12th', 'ord(12)');
check(Humanize::ordinal(13), '13th', 'ord(13)');
check(Humanize::ordinal(21), '21st', 'ord(21)');
check(Humanize::ordinal(22), '22nd', 'ord(22)');
check(Humanize::ordinal(101), '101st', 'ord(101)');
check(Humanize::ordinal(111), '111th', 'ord(111)');

check(Humanize::pluralize(1, 'file'), '1 file', 'plur(1)');
check(Humanize::pluralize(3, 'file'), '3 files', 'plur(3)');
check(Humanize::pluralize(2, 'person', 'people'), '2 people', 'plur(people)');

if ($failures > 0) {
    fwrite(STDERR, "\n$failures FAILURES\n");
    exit(1);
}
echo "\nALL PHP TESTS PASSED\n";
