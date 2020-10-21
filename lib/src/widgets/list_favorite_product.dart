import 'package:flutter/material.dart';
import 'package:sanoria_store/src/models/product_data.dart';
import 'package:sanoria_store/src/widgets/product_card.dart';

class ListFavoriteProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final List<ProductData> productData = [...productList]
        .where((element) => element.isFavorite == true)
        .toList();
    return GridView.builder(
      physics: BouncingScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: width < 415 ? 2 : 3,
        crossAxisSpacing: 3,
        mainAxisSpacing: 3,
      ),
      itemCount: productData.length,
      itemBuilder: (context, index) => ProductCard(
        productData: productData[index],
        heroTag: 'favorite_list_',
      ),
    );
  }
}
