import 'package:flutter/material.dart';
import 'package:catalog_app/widgets/drawer.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
        // leading: Text("Catalog App"),
      ),
      body: Center(
        child: SizedBox(
          //string interpolation
          child: Text("Welcome to the Catalog App"),
        ),
      ),
      // bottomSheet: BottomSheet(),
      // bottomNavigationBar: BottomNavigationBar(items: items),
      drawer: MyDrawer(),
    );
  }
}