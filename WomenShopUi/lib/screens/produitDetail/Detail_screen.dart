import 'package:WomenShopUi/Models/Products.dart';
import 'package:WomenShopUi/screens/produitDetail/Body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset('WomenShopUi/assets/icons/back.svg'),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
            icon: SvgPicture.asset('WomenShopUi/assets/icons/search.svg'),
            onPressed: () {}),
        IconButton(
            icon: SvgPicture.asset('WomenShopUi/assets/icons/cart.svg'),
            onPressed: () {}),
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}
