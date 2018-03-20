// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:test/test.dart';
import 'package:test_descriptor/test_descriptor.dart' as d;
import 'package:test_process/test_process.dart';

final _webdevBin = p.absolute('bin/webdev.dart');

void main() {
  test('README contains help output', () async {
    var process = await TestProcess.start('dart', [_webdevBin]);

    var output = (await process.stdoutStream().join('\n')).trim();

    var readme = new File('README.md');

    expect(readme.readAsStringSync(),
        contains('```console\n\$ webdev\n$output\n```'));

    await process.shouldExit(0);
  });

  test('non-existant commands create errors', () async {
    var process = await TestProcess.start('dart', [_webdevBin, 'monkey']);

    var output = (await process.stdoutStream().join('\n')).trim();

    expect(output, contains('Could not find a command named "monkey".'));

    await process.shouldExit(64);
  });

  test('should fail in a package without a build_runner dependency', () async {
    var process = await TestProcess.start('dart', [_webdevBin, 'serve']);
    var output = (await process.stdoutStream().join('\n')).trim();

    expect(output, contains(r'''Could not run in the current directory.
A dependency on `build_runner` was not found.'''));
    await process.shouldExit(78);
  });

  group('should fail when `build_runner` is the wrong version', () {
    for (var version in ['0.7.13+1', '0.9.0']) {
      test(version, () async {
        await d.file('pubspec.lock', '''
# Copy-pasted from a valid run
packages:
  build_runner:
    dependency: "direct main"
    description:
      name: build_runner
      url: "https://pub.dartlang.org"
    source: hosted
    version: "$version"
''').create();

        var process = await TestProcess.start('dart', [_webdevBin, 'build'],
            workingDirectory: d.sandbox);
        var output = (await process.stdoutStream().join('\n')).trim();

        expect(output, contains('Could not run in the current directory.'));
        expect(
            output,
            contains('The `build_runner` version – $version – '
                'is not within the supported range – >=0.8.0 <0.9.0.'));
        await process.shouldExit(78);
      });
    }
  });
}