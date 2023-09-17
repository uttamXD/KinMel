import 'package:flutter/material.dart';
import 'package:project_kin_bech/model/product_response_model.dart';

class EcommerceItemsProvider with ChangeNotifier {
  final List<ProductResponseModel> _myCartList = []; //to store cart data
  List get myCartList => _myCartList;
  int get count => _myCartList.length;

  double _price = 0.0;

  final List<ProductResponseModel> _apiDataList = []; // to store api data
  List<ProductResponseModel> get apiDataList => _apiDataList;

  // add item and price to cart
  void addItem(items) {
    _myCartList.add(items);
    _price += items.price;
    notifyListeners();
  }

  // remove items and price from cart
  void removeItem(items) {
    _myCartList.remove(items);
    _price -= items.price;
    notifyListeners();
  }
}
