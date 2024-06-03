import 'package:e_commerce_shopping/model/cart_model.dart';
import 'package:e_commerce_shopping/model/product_model.dart';
import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  List<CartModel> _carts = [];

  CartModel? getCartItem(String productId) {
    try {
      return _carts.firstWhere((cartItem) => cartItem.productModel.id == productId);
    } catch (e) {
      return null;
    }
  }

  void addTocart(ProductModel productmodel) {
    var isExist = _carts.where((element) => element.productModel.id == productmodel.id);
    if (isExist.isEmpty) {
      _carts.add(CartModel(productModel: productmodel, quantity: 1));
    } else {
      isExist.first.quantity += 1;
    }
    notifyListeners();
  }

  void removeItem(String productid) {
    _carts.removeWhere((element) => element.productModel.id == productid);
    notifyListeners();
  }

  void Incrementquanity(String productid) {
    try {
      CartModel cartitem = _carts.firstWhere((cartItem) => cartItem.productModel.id == productid);
      cartitem.quantity += 1;
      notifyListeners();
    } catch (e) {
      // Handle the case where no matching cart item is found
    }
  }

  void descquanity(String productid) {
    try {
      CartModel cartitem = _carts.firstWhere((cartItem) => cartItem.productModel.id == productid);
      if (cartitem.quantity > 1) {
        cartitem.quantity--;
      } else {
        _carts.remove(cartitem);
      }
      notifyListeners();
    } catch (e) {
      // Handle the case where no matching cart item is found
    }
  }

  double getpriceTotal() {
    double total = 0;
    for (var cartItem in _carts) {
      total += (cartItem.productModel.price * cartItem.quantity);
    }
    return total;
  }

  List<CartModel> get carts => _carts;
  double get cartSubTotal => getpriceTotal();
}