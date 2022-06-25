import 'package:flutter/material.dart';
import 'package:catalog_app/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // Vx.hexToColor(code)
      children: [
        "Catalog App".text.xl5.bold.color(MyTheme.blueish).make(),
        "Trending Products".text.xl2.make(),
      ],
    );
  }
}