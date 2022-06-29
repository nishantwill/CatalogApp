import 'package:flutter/material.dart';
import 'package:catalog_app/models/catalogue.dart';
import 'package:catalog_app/pages/home_details_page.dart';
import 'package:velocity_x/velocity_x.dart';
import 'catalogue_image.dart';

class CatalogueList extends StatelessWidget {
  const CatalogueList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogueModel.items?.length,
      itemBuilder: (context, index) {
        final catalogue = CatalogueModel.items![index];
        return InkWell(
            onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeDetailPage(
                      catalogue: catalogue,
                    ),
                  ),
                ),
            child: CatalogueItem(catalogue: catalogue));
      },
    );
  }
}

class CatalogueItem extends StatelessWidget {
  final Item catalogue;
  const CatalogueItem({Key? key, required this.catalogue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Hero(
            tag: Key(catalogue.id.toString()),
            child: CatalogueImage(image: catalogue.image),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              catalogue.name.text.lg
                  .color(context.theme.colorScheme.secondary)
                  .bold
                  .make(),
              catalogue.desc.text.textStyle(context.captionStyle!).make(),
              10.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\$${catalogue.price}".text.bold.xl.make(),
                  ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            // ignore: deprecated_member_use
                            context.theme.buttonColor),
                        shape: MaterialStateProperty.all(
                          const StadiumBorder(),
                        ),
                      ),
                      child: "Add".text.make())
                ],
              ).pOnly(right: 8.0)
            ],
          ))
        ],
      ),
    ).color(context.cardColor).rounded.square(150).make().p16();
  }
}
