import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sanoria_store/src/commons/colors.dart';
import 'package:sanoria_store/src/commons/lotties.dart';
import 'package:sanoria_store/src/commons/routes_images.dart';
import 'package:sanoria_store/src/models/product_data.dart';
import 'package:sanoria_store/src/utils/navigations.dart';
import 'package:sanoria_store/src/widgets/stiker_size.dart';

class ProductCardOffer extends StatelessWidget {
  final ProductData productData;
  final String heroTag;
  const ProductCardOffer({
    this.productData,
    @required this.heroTag,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 7, horizontal: 7),
      decoration: BoxDecoration(
        gradient: greenGradient,
        boxShadow: shadowBox,
        borderRadius: BorderRadius.circular(15),
      ),
      width: 275,
      child: Row(
        children: [
          _imageProduct(context),
          SizedBox(width: 10),
          _productDescription(),
        ],
      ),
    );
  }

  _imageProduct(BuildContext context) {
    return Container(
      width: 140,
      padding: EdgeInsets.all(5),
      child: Hero(
        tag: heroTag + this.productData.name,
        child: GestureDetector(
          onTap: () =>
              navigateToProductDetail(context, this.productData, heroTag),
          child: CachedNetworkImage(
            imageUrl: urlImage + this.productData.imageUrl,
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

  _productDescription() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              this.productData.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
            ),
            Row(
              children: [
                Text('😉'),
                SizedBox(width: 7),
                Text(
                  '\$${this.productData.priceBefore}',
                  maxLines: 1,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                StikerSize(
                  weight: this.productData.weight,
                  backgraoundColor: Colors.black12,
                  textColor: principalColor,
                ),
                SizedBox(width: 8),
                Text(
                  "\$${this.productData.price}",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
