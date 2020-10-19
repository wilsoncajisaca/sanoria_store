import 'package:flutter/material.dart';
import 'package:sanoria_store/src/models/product_data.dart';
import 'package:sanoria_store/src/pages/principal_pages/product_detail.dart';

navigateToProductDetail(
    BuildContext context, ProductData productData, String heroTag) {
  Navigator.of(context).push(
    PageRouteBuilder(
      pageBuilder: (context, animation, __) {
        return FadeTransition(
          opacity: animation,
          child: ProductDetail(
            productData: productData,
            heroTag: heroTag,
          ),
        );
      },
    ),
  );
}
