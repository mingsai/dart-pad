// Copyright (c) 2014, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library codepad.common_test;

import 'package:codepad/services/common.dart';
import 'package:unittest/unittest.dart';

void defineTests() {
  group('Lines', () {
    test('empty string', () {
      Lines lines = new Lines('');
      expect(lines.getLineForOffset(0), 0);
      expect(lines.getLineForOffset(1), 0);
      expect(lines.offsetForLine(0), 0);
      expect(lines.offsetForLine(1), 0);
    });

    test('getLineForOffset', () {
      Lines lines = new Lines('one\ntwo\nthree');
      expect(lines.getLineForOffset(0), 0);
      expect(lines.getLineForOffset(1), 0);
      expect(lines.getLineForOffset(2), 0);
      expect(lines.getLineForOffset(3), 0);
      expect(lines.getLineForOffset(4), 1);
      expect(lines.getLineForOffset(5), 1);
      expect(lines.getLineForOffset(6), 1);
      expect(lines.getLineForOffset(7), 1);
      expect(lines.getLineForOffset(8), 2);
      expect(lines.getLineForOffset(9), 2);
      expect(lines.getLineForOffset(10), 2);
      expect(lines.getLineForOffset(11), 2);
      expect(lines.getLineForOffset(12), 2);
      expect(lines.getLineForOffset(13), 2);

      expect(lines.getLineForOffset(14), 2);
    });

    test('offsetForLine', () {
      Lines lines = new Lines('one\ntwo\nthree');
      expect(lines.offsetForLine(0), 0);
      expect(lines.offsetForLine(1), 4);
      expect(lines.offsetForLine(2), 8);
      expect(lines.offsetForLine(3), 8);
    });
  });
}
