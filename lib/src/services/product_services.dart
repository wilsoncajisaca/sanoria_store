import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sanoria_store/src/commons/url.dart';
import 'package:sanoria_store/src/models/product_data.dart';

class ProductServices with ChangeNotifier {
  ProductData _productData;

  ProductData get productData => this._productData;

  Future Login(String name) async {
    final data = {
      'name': name,
      'priority': 2,
      'remark': name,
      'deliverydate': '2020-10-10',
    };

    final resp = await http.post(
      '$globlaUrl/project/add',
      body: jsonEncode(data),
      headers: {
        'Content-type': 'application/json',
      },
    );
    print(resp.body);
  }

  void changeFavorite(bool isFavorite) {
    if (isFavorite) {
      _productData.copyWith(isFavorite: false);
    } else {
      _productData.copyWith(isFavorite: true);
    }
    notifyListeners();
  }

  // toggleFavourite(Item item) {
  //   int index = _items.indexWhere((element) => element.name == item.name);
  //   _items[index].favourite = !_items[index].favourite;
  //   notifyListeners();
  // }
}
