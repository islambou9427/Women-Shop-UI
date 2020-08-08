import 'package:WomenShopUi/Models/Products.dart';
import 'package:flutter/material.dart';

class ProductTtileWithImage extends StatelessWidget {
  const ProductTtileWithImage({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Aromontic hand bug',
              style: TextStyle(fontSize: 15, color: Colors.white)),
          Text(product.title,
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: 5,
          ),
          Row(
            children: <Widget>[
              RichText(
                  text: TextSpan(children: [
                TextSpan(text: "Price\n"),
                TextSpan(
                    text: "\$${product.price}",
                    style: Theme.of(context).textTheme.headline4.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold))
              ])),
              SizedBox(
                width: 70,
              ),
              Expanded(
                  child: Image.asset(
                product.image,
                fit: BoxFit.fitWidth,
              ))
            ],
          )
        ],
      ),
    );
  }
}
