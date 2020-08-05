import 'package:WomenShopUi/screens/home/Body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
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
      leading: IconButton(
          icon: SvgPicture.asset("assets/icons/back.svg"), onPressed: () {}),
      actions: <Widget>[
        IconButton(
            icon: SvgPicture.asset("assets/icons/search.svg",
                color: Colors.black),
            onPressed: () {},
            color: Colors.black),
        IconButton(
            icon:
                SvgPicture.asset("assets/icons/cart.svg", color: Colors.black),
            onPressed: () {},
            color: Colors.black),
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}
