import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sanoria_store/src/commons/colors.dart';
import 'package:sanoria_store/src/commons/lotties.dart';
import 'package:sanoria_store/src/commons/routes_images.dart';
import 'package:sanoria_store/src/models/product_data.dart';
import 'package:sanoria_store/src/utils/navigations.dart';
import 'package:sanoria_store/src/widgets/buttom_quantity.dart';

class ProductCardShopping extends StatefulWidget {
  final ProductData productData;

  const ProductCardShopping({this.productData});

  @override
  _ProductCardShoppingState createState() => _ProductCardShoppingState();
}

class _ProductCardShoppingState extends State<ProductCardShopping> {
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key('value'),
      direction: DismissDirection.endToStart,
      background: Container(
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 8),
        padding: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(
              Icons.close,
              color: Colors.white,
              size: 50,
            ),
          ],
        ),
      ),
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(context, 'product_detail'),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              _detailProduct(),
              _imageProduct(),
              _quantityProduct(),
            ],
          ),
        ),
      ),
    );
  }

  _detailProduct() {
    return Container(
      margin: EdgeInsets.only(left: 50, right: 5, top: 7, bottom: 7),
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xfff9f9f9),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: EdgeInsets.only(left: 5),
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  this.widget.productData.name,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Poppins',
                  ),
                ),
                Text(
                  'Desde Paute',
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.black54,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Poppins',
                  ),
                ),
                Text(
                  'Total \$${this.widget.productData.price}',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black87,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Poppins',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _imageProduct() {
    return Positioned(
      top: 2,
      left: 0,
      height: 100,
      child: Hero(
        tag: 'shop_list_${this.widget.productData.name}',
        child: GestureDetector(
          onTap: () => navigateToProductDetail(
              context, this.widget.productData, 'shop_list_'),
          child: CachedNetworkImage(
            imageUrl: urlImage + this.widget.productData.imageUrl,
            placeholder: (context, url) => Container(
              padding: EdgeInsets.all(30),
              child: Lottie.asset(lottieLoad),
            ),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ),
      ),
    );
  }

  _quantityProduct() {
    return Positioned(
      right: 6,
      top: 6,
      child: Column(
        children: [
          ButtomQuantity(
            backgroundColor: Colors.white,
            icon: Icons.add,
            padding: 3,
            iconColor: principalColor,
          ),
          SizedBox(height: 8),
          Container(
            child: Text(
              "2kg",
              style: TextStyle(
                fontSize: 13,
                color: Colors.black87,
                fontWeight: FontWeight.w700,
                fontFamily: 'Poppins',
              ),
            ),
          ),
          SizedBox(height: 8),
          ButtomQuantity(
            backgroundColor: Colors.white,
            icon: Icons.remove,
            padding: 3,
            iconColor: principalColor,
          ),
        ],
      ),
    );
  }
}
