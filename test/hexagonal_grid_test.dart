import 'dart:math';

import 'package:flutter_test/flutter_test.dart';

import 'package:hexagonal_grid/hexagonal_grid.dart';

void main() {
  test('Origin hex to pixel works', () {
    final Point size = Point(2, 2);
    final Point hexLayoutOrigin = Point(5, 5);
    final Hex originHex = Hex(0, 0);

    final HexLayout hexLayout = HexLayout.orientFlat(size, hexLayoutOrigin);
    final Point hexToPixel = originHex.toPixel(hexLayout);

    expect(hexToPixel.x, hexLayoutOrigin.x);
    expect(hexToPixel.y, hexLayoutOrigin.y);
  });
}
