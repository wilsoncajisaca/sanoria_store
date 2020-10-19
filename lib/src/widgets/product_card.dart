import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sanoria_store/src/commons/colors.dart';
import 'package:sanoria_store/src/commons/lotties.dart';
import 'package:sanoria_store/src/commons/routes_images.dart';
import 'package:sanoria_store/src/models/product_data.dart';
import 'package:sanoria_store/src/utils/navigations.dart';
import 'package:sanoria_store/src/widgets/stiker_size.dart';

class ProductCard extends StatelessWidget {
  final String heroTag;
  final ProductData productData;

  const ProductCard({
    this.productData,
    @required this.heroTag,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _boxImages(context),
          SizedBox(height: 5),
          _boxDescription(),
        ],
      ),
    );
  }

  _boxImages(BuildContext context) {
    return Expanded(
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              color: Colors.white,
              boxShadow: shadowBox,
            ),
            child: Container(
              padding: EdgeInsets.all(7),
              height: 135,
              child: Hero(
                tag: this.heroTag + this.productData.name,
                child: GestureDetector(
                  onTap: () => navigateToProductDetail(
                    context,
                    this.productData,
                    this.heroTag,
                  ),
                  child: CachedNetworkImage(
                    imageUrl: urlImage + this.productData.imageUrl,
                    fit: BoxFit.contain,
                    placeholder: (context, url) => Container(
                      padding: EdgeInsets.all(30),
                      child: Lottie.asset(lottieLoad),
                    ),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 5,
            left: 5,
            child: StikerSize(
              weight: this.productData.weight,
              backgraoundColor: Colors.black12,
              textColor: Colors.green[400],
            ),
          ),
          Positioned(
            bottom: 5,
            right: 5,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white54,
              ),
              child: Icon(
                Icons.add_shopping_cart,
                color: Colors.green[400],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _boxDescription() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                this.productData.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 13,
                  fontFamily: 'Poppins',
                ),
              ),
              SizedBox(height: 5),
              Text(
                "\$${this.productData.price.toStringAsFixed(2)}",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  color: principalColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
