import 'package:e_commerce_shopping/model/product_model.dart';
import 'package:uuid/uuid.dart';

var uuid = const Uuid();

class CartModel {
  final String id;
  final ProductModel productModel;
  int quantity;

  CartModel({required this.productModel, required this.quantity}) : id = uuid.v4();
}