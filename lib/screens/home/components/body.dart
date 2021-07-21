import 'package:flutter/material.dart';
import 'package:tugas_akhir/constants.dart';
import 'package:tugas_akhir/models/Product.dart';
import 'package:tugas_akhir/screens/details/details_scree.dart';
import 'package:tugas_akhir/screens/home/components/categories.dart';
import 'package:tugas_akhir/screens/home/components/item_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text("Jualin \u{1F4F2}",
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 30,
              ) //Theme.of(context)
              //.textTheme
              // .headline5!
              // .copyWith(fontWeight: FontWeight.bold),
              ),
        ),
        Categories(),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: GridView.builder(
            itemCount: products.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: kDefaultPaddin,
                crossAxisSpacing: kDefaultPaddin,
                childAspectRatio: 0.75),
            itemBuilder: (context, index) => ItemCard(
                product: products[index],
                press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            DetailsScreen(product: products[index])))),
          ),
        ))
      ],
    );
  }
}
