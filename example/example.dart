import 'dart:math';

import 'package:hexagonal_grid/hexagonal_grid.dart';

class Example {
  void createOriginHexWithLayout() {
    //Origin hex where q = 0, and r = 0 (axial coordinates)
    final Hex originHex = Hex(0, 0);

    //Arbitrary sizes and layout origins to help construct the HexLayout
    final Point size = Point(2, 2);
    final Point hexLayoutOrigin = Point(5, 5);

    //Create a flat HexLayout
    final HexLayout hexLayout = HexLayout.orientFlat(size, hexLayoutOrigin);

    //Transpose the axial coordinate Hex onto the HexLayout to get a pixel
    // representation of that Hex
    final Point hexToPixel = originHex.toPixel(hexLayout);
  }

  void createNeighbors() {
    //Origin hex where q = 0, and r = 0 (axial coordinates)
    final Hex originHex = Hex(0, 0);

    //Iterate through each possible direction of a hex (six of them) and get the
    // neighbor for each. Then print them out.
    for (int d = 0; d < Hex.directions.length; d++) {
      Hex neighborHex = originHex.neighbor(d);
      print(neighborHex);
    }
  }
}
