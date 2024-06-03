import 'package:e_commerce_shopping/model/product_model.dart';
import 'package:flutter/material.dart';

class ProductProvider extends ChangeNotifier {
  final List<ProductModel> _dress = [
    ProductModel(
        name: 'Summer Dress',
        desc: 'Shin VCAY Womens waist Ruffle Hem Dress',
        price: 125,
        image: 'assets/dres3.jpg',
        colors: [Colors.blue, Colors.pink],
        size: ['M', 'L', 'XL'],
        isAvailable: true),
    ProductModel(
        name: 'Hot Dress',
        desc: 'Shin VCAY Womens waist Ruffle Hem Dress...\n Summer short dress',
        colors: [Colors.purple, Colors.yellow, Colors.black],
        size: ['M', 'L', 'XL'],
        price: 95,
        image: 'assets/dres2.jpg',
        isAvailable: true),
  
    ProductModel(
        name: 'Hot Dress',
        desc: 'Shin VCAY Womens waist Ruffle Hem Dress...\n Summer short dress',
        colors: [
          Colors.purple,
          Colors.yellow,
          Color.fromARGB(255, 76, 21, 128)
        ],
        size: ['M', 'L', 'XL'],
        price: 87,
        image: 'assets/dres6.jpg',
        isAvailable: true),
    ProductModel(
        name: 'Hot Dress',
        desc: 'Shin VCAY Womens waist Ruffle Hem Dress...\n Summer short dress',
        colors: [
          const Color.fromARGB(255, 193, 94, 211),
          Color.fromARGB(255, 24, 17, 131),
          Color.fromARGB(255, 7, 122, 74)
        ],
        size: ['M', 'L', 'XL'],
        price: 195,
        image: 'assets/dres4.jpg',
        isAvailable: true),
    ProductModel(
        name: ' Dress',
        desc: 'Shin VCAY Womens waist Ruffle Hem Dress...\n Summer short dress',
        colors: [
          Color.fromARGB(255, 173, 167, 72),
          Colors.yellow,
          const Color.fromARGB(255, 230, 3, 3)
        ],
        size: ['M', 'L', 'XL'],
        price: 200,
        image: 'assets/dres5.jpg',
        isAvailable: true),
    ProductModel(
        name: 'Summer 2024',
        desc: 'Shin VCAY Womens waist Ruffle Hem Dress...\n Summer short dress',
        colors: [Colors.purple, Colors.yellow, Colors.black],
        size: ['M', 'L', 'XL'],
        price: 95,
        image: 'assets/dres1.jpg',
        isAvailable: true),
    ProductModel(
        name: ' Dress',
        desc: 'Shin VCAY Womens waist Ruffle Hem Dress...\n Summer short dress',
        colors: [
          Color.fromARGB(255, 199, 75, 75),
          Color.fromARGB(255, 59, 173, 103),
          Color.fromARGB(255, 9, 146, 151)
        ],
        size: ['M', 'L', 'XL'],
        price: 95,
        image: 'assets/dres7.jpg',
        isAvailable: true),
  ];

  List<ProductModel> _t_shirt = [
    ProductModel(
      name: ' Women T-shirt',
      price: 50,
      image: 'assets/pluz.jpg',
      isAvailable: true,
      size: ['S', 'M', 'L', 'XL'],
      colors: [
        Colors.lightBlue,
        Colors.purpleAccent,
        const Color.fromARGB(255, 230, 133, 6),
        Colors.lightGreen
      ],
      desc: 'Classi Size: M..L..XL ',
    ),
    ProductModel(
      name: "Fashion wommen",
      price: 74,
      image: 'assets/pluz2.jpg',
      desc:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
      size: ['S', 'M', 'L', 'XL'],
      colors: [
        Colors.redAccent,
        Colors.greenAccent,
        Colors.amber,
        Colors.indigo,
      ],
      isAvailable: true,
    ),
    ProductModel(
      name: "Trendy ",
      price: 87,
      image: "assets/pluz3.jpg",
      desc:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
      size: ['S', 'M', 'L', 'XL'],
      colors: [
        const Color.fromARGB(255, 255, 8, 8),
        Color.fromARGB(255, 187, 70, 15),
        Color.fromARGB(255, 36, 9, 134),
        Color.fromARGB(255, 21, 163, 92),
      ],
      isAvailable: false,
    ),
    ProductModel(
      name: "Trendy ",
      price: 90,
      image: "assets/pluz4.jpg",
      desc:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
      size: ['S', 'M', 'L', 'XL'],
      colors: [
        const Color.fromARGB(255, 255, 8, 8),
        Color.fromARGB(255, 187, 70, 15),
        Color.fromARGB(255, 36, 9, 134),
        Color.fromARGB(255, 21, 163, 92),
      ],
      isAvailable: false,
    ),
    ProductModel(
      name: "Trendy 2024 ",
      price: 180,
      image: "assets/pluz6.jpg",
      desc:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
      size: ['S', 'M', 'L', 'XL'],
      colors: [
        const Color.fromARGB(255, 255, 8, 8),
        Color.fromARGB(255, 151, 125, 112),
        Color.fromARGB(255, 166, 154, 209),
        Color.fromARGB(255, 21, 163, 92),
      ],
      isAvailable: false,
    ),
    ProductModel(
      name: "Trendy model 4",
      price: 87,
      image: "assets/pluz7.jpg",
      desc:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
      size: ['S', 'M', 'L', 'XL'],
      colors: [
        const Color.fromARGB(255, 255, 8, 8),
        Color.fromARGB(255, 187, 70, 15),
        Color.fromARGB(255, 36, 9, 134),
        Color.fromARGB(255, 21, 163, 92),
      ],
      isAvailable: false,
    ),
  ];
  final List<ProductModel> _pants = [
    ProductModel(
      name: 'Fashion Pants',
      price: 207,
      image: 'assets/pant1.jpg',
      desc:
          'Classi...........\n Shin ladies solid plented wraparound pants with tie belt',
      size: ['S', 'M', 'L', 'XL'],
      colors: [
        Color.fromARGB(255, 184, 13, 127),
        Color.fromARGB(255, 175, 37, 37),
        Colors.amber,
        Colors.indigo,
        Color.fromARGB(255, 38, 184, 171),
      ],
      isAvailable: true,
    ),
    ProductModel(
      name: 'Fashion Pants Model2',
      price: 90,
      size: ['S', 'M', 'L', 'XL'],
      colors: [
        Color.fromARGB(255, 184, 13, 127),
        Color.fromARGB(255, 175, 37, 37),
        const Color.fromARGB(255, 163, 148, 102),
      ],
      image: 'assets/pant3.jpg',
      desc:
          'Model 2 .........\n Shin ladies solid plented wraparound jumpsuit with tie belt ',
      isAvailable: true,
    ),
    ProductModel(
        name: 'Style pants women',
        desc: 'Shin ladies solid plented wraparound jumpsuit with tie belt',
        image: 'assets/pant4.jpg',
        size: ['S', 'M', 'L', 'XL'],
        colors: [
          Colors.redAccent,
          Colors.greenAccent,
          Colors.amber,
        ],
        isAvailable: true,
        price: 89),

   
   
   
  ];

  final List<ProductModel> _bluzer = [
    ProductModel(
      name: "Fashion Bluzer",
      price: 230,
      image: "assets/bluz.jpg",
      desc:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
      size: ['S', 'M', 'L', 'XL'],
      colors: [
        Colors.redAccent,
        Colors.greenAccent,
        Color.fromARGB(255, 238, 91, 6),
        Colors.indigo,
      ],
      isAvailable: true,
    ),
    ProductModel(
      name: "Fashion Bluzer",
      price: 220,
      image: "assets/bluz2.jpg",
      desc:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
      size: ['S', 'M', 'L', 'XL'],
      colors: [
        Colors.redAccent,
        Colors.greenAccent,
        Color.fromARGB(255, 41, 104, 5),
        Colors.indigo,
      ],
      isAvailable: true,
    ),
    ProductModel(
      name: "Fashion Bluzer",
      price: 190,
      image: "assets/bluz3.jpg",
      desc:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
      size: ['S', 'M', 'L', 'XL'],
      colors: [
        Colors.redAccent,
        Colors.greenAccent,
        Color.fromARGB(255, 226, 12, 23),
        const Color.fromARGB(255, 140, 149, 202),
      ],
      isAvailable: true,
    ),
    ProductModel(
      name: "Fashion Bluzer",
      price: 200,
      image: "assets/bluz4.jpg",
      desc:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
      size: ['S', 'M', 'L', 'XL'],
      colors: [
        Colors.redAccent,
        Colors.greenAccent,
        Color.fromARGB(255, 238, 91, 6),
        Color.fromARGB(255, 160, 145, 7),
        Color.fromARGB(255, 197, 97, 180),
      ],
      isAvailable: true,
    ),
  ];
  List<ProductModel> _favouritelist = [];
  void addtofavourite(ProductModel productModel) {
    _favouritelist.add(productModel);
    notifyListeners();
  }

  void removefavourite(ProductModel productModel) {
    _favouritelist.remove(productModel);
    notifyListeners();
  }

  List<ProductModel> get dress => _dress;
  List<ProductModel> get t_shirt => _t_shirt;
  List<ProductModel> get pants => _pants;
  List<ProductModel> get bluzers => _bluzer;
  List<ProductModel> get favouritelist => _favouritelist;
}
