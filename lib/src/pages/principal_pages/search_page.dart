import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:sanoria_store/src/commons/colors.dart';
import 'package:sanoria_store/src/models/product_data.dart';
import 'package:sanoria_store/src/widgets/list_products.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController txtSearchController = new TextEditingController();
  List<ProductData> _productList;
  List<ProductData> _searchResult = [];
  @override
  void initState() {
    super.initState();
    _productList = productList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f0f0),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 8),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: kToolbarHeight,
              child: Row(
                children: [
                  BackButton(
                    color: blackCustom,
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: shadowBox,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            LineAwesomeIcons.search,
                            size: 20,
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: TextField(
                              controller: txtSearchController,
                              decoration: InputDecoration(
                                hintText: 'Buscar Producto',
                                border: InputBorder.none,
                              ),
                              onChanged: onSearchTextChanged,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: _searchResult.length != 0 ||
                      txtSearchController.text.isNotEmpty
                  ? _listProduct(this._searchResult)
                  : _listProduct(this._productList),
            ),
          ],
        ),
      ),
    );
  }

  onSearchTextChanged(String text) async {
    this._searchResult.clear();
    if (text.trim().isEmpty) {
      setState(() {});
      return;
    }

    this._productList.forEach((product) {
      if (product.name.toLowerCase().contains(text.toLowerCase()))
        this._searchResult.add(product);
    });

    setState(() {});
  }

  _listProduct(List<ProductData> productlist) {
    return Container(
      margin: EdgeInsets.only(top: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        color: Colors.white,
      ),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
      child: ListProducts(
        productListParam: productlist,
      ),
    );
  }
}
