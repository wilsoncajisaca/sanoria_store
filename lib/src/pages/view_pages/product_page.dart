import 'package:flutter/material.dart';
import 'package:sanoria_store/src/models/category_data.dart';
import 'package:sanoria_store/src/models/product_data.dart';
import 'package:sanoria_store/src/widgets/category_card.dart';
import 'package:sanoria_store/src/widgets/list_products.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _Categories(),
          Expanded(
            child: '1' == '1'
                ? ListProducts(
                    productListParam: productList,
                  )
                : Container(
                    child: Center(
                      child: Text('No se encontraron productos'),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}

class _Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(left: 10, top: 2),
          child: Text(
            "Explorar Categorias",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              fontFamily: 'Poppins',
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            // border: Border(
            //   bottom: BorderSide(width: 0.2, color: Colors.black26),
            // ),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black.withOpacity(0.04),
                  blurRadius: 15.0,
                  offset: Offset(0.0, 20.75))
            ],
          ),
          height: 75,
          child: ListView.builder(
            //shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: categoryList.length,
            itemBuilder: (context, index) => CategoryCard(
              categoryData: categoryList[index],
            ),
          ),
        ),
      ],
    );
  }
}
