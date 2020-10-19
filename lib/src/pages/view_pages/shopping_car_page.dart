import 'package:flutter/material.dart';
import 'package:sanoria_store/src/commons/colors.dart';
import 'package:sanoria_store/src/models/product_data.dart';
import 'package:sanoria_store/src/widgets/box_total_price.dart';
import 'package:sanoria_store/src/widgets/product_card_shopping.dart';

class ShoppingCarPage extends StatefulWidget {
  @override
  _ShoppingCarPageState createState() => _ShoppingCarPageState();
}

class _ShoppingCarPageState extends State<ShoppingCarPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: blackCustom,
      child: Column(
        children: [
          _boxProduct(),
          BoxTotalPrice(
            title: 'Total a pagar',
            reference: 'shopingPage',
            totalPrice: 32.55,
          ),
        ],
      ),
    );
  }

  _boxProduct() {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: productFavoriteList.length,
          itemBuilder: (context, index) => ProductCardShopping(
            productData: productFavoriteList[index],
          ),
        ),
      ),
    );
  }
}
