import 'package:flutter/material.dart';
import 'package:tugas_akhir/constants.dart';
import 'package:tugas_akhir/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      // leading: IconButton(
      //     onPressed: () {},
      //     icon: Icon(
      //       Icons.arrow_back,
      //       color: Colors.grey,
      //     )),
      actions: <Widget>[
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.grey,
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.grey,
            )),
        SizedBox(
          width: kDefaultPaddin / 2,
        )
      ],
    );
  }
}
