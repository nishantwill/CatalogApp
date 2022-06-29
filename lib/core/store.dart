import 'package:velocity_x/velocity_x.dart';
import 'package:catalog_app/models/cart.dart';
import 'package:catalog_app/models/catalogue.dart';

class MyStore extends VxStore {
  CatalogueModel catalogue = CatalogueModel();
  CartModel cart = CartModel();
  MyStore() {
    catalogue = CatalogueModel();
    cart = CartModel();
    cart.catalogue = catalogue;
  }
}

  // MyStore store = VxState.store;