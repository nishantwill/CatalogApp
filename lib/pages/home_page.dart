import 'package:flutter/material.dart';
import 'package:catalog_app/widgets/drawer.dart';
import 'package:catalog_app/widgets/item_widget.dart';
import 'package:catalog_app/models/catalog.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogModel.items[0]);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalog App",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          // itemCount: CatalogModel.items.length,
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}