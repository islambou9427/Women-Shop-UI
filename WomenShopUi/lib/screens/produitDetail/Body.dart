import 'package:WomenShopUi/Models/Products.dart';
import 'package:WomenShopUi/screens/produitDetail/compnants/ProductTitleWithImage.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(
                      top: size.height * 0.10, left: 20, right: 20),
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  //height: 370,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25))),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text('oikljpomlkqfijk,qzklej,d')
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                ProductTtileWithImage(product: product)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
