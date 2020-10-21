import 'package:flutter/material.dart';
import 'package:sanoria_store/src/widgets/product_card.dart';

class ListProducts extends StatelessWidget {
  final productListParam;

  const ListProducts({@required this.productListParam});

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
      itemCount: productListParam.length,
      itemBuilder: (context, index) => ProductCard(
        productData: productListParam[index],
        heroTag: 'product_list_',
      ),
    );
  }
}
