import 'package:uuid/uuid.dart';

var uuid = const Uuid();
class ProductModel {
  final String id;
  final String name;
  final String desc;
  final double price;
  List? colors;
  List? size;
  final String image;
  final bool isAvailable;

  ProductModel({
  
    required this.name,
    required this.desc,
    required this.image,
    required this.isAvailable,
    this.colors,
     this.size,
    required this.price

  }):id= uuid.v4();
}
