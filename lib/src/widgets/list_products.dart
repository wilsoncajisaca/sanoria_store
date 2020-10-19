import 'package:flutter/material.dart';
import 'package:sanoria_store/src/models/product_data.dart';
import 'package:sanoria_store/src/widgets/product_card.dart';

class ListProducts extends StatelessWidget {
  const ListProducts({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return GridView.builder(
      physics: BouncingScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: width < 415 ? 2 : 3,
        crossAxisSpacing: 3,
        mainAxisSpacing: 3,
      ),
      itemCount: productList.length,
      itemBuilder: (context, index) => ProductCard(
        productData: productList[index],
        heroTag: 'product_list_',
      ),
    );
  }
}
