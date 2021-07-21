import 'package:flutter/material.dart';
import 'package:tugas_akhir/constants.dart';
import 'package:tugas_akhir/models/Product.dart';
import 'package:tugas_akhir/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: BuildAppBar(product: product),
      body: Body(product: product),
    );
  }
}

class BuildAppBar extends StatelessWidget with PreferredSizeWidget {
  const BuildAppBar({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
        SizedBox(
          width: kDefaultPaddin / 2,
        )
      ],
    );
  }
}
