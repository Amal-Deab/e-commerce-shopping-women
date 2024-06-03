import 'package:e_commerce_shopping/model/product_model.dart';
import 'package:e_commerce_shopping/provider/cart_provider.dart';
import 'package:e_commerce_shopping/provider/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CardProduct extends StatefulWidget {
  final ProductModel product;
  final void Function()? onTap;
  const CardProduct({super.key, required this.product, this.onTap});

  @override
  State<CardProduct> createState() => _CardProductState();
}

class _CardProductState extends State<CardProduct> {
  @override
  Widget build(BuildContext context) {
    var isselected = context.select<ProductProvider, bool>((FavouritePage) =>
        FavouritePage.favouritelist.contains(widget.product));

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        onTap: widget.onTap,
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
         
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      widget.product.image,
                      width: 200,
                      height: MediaQuery.of(context).size.height / 3.7,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    right: 3,
                    child: Center(
                      child: IconButton(
                          onPressed: isselected
                              ? () {
                                  context
                                      .read<ProductProvider>()
                                      .removefavourite(widget.product);
                                }
                              : () {
                                  context
                                      .read<ProductProvider>()
                                      .addtofavourite(widget.product);
                                },
                          icon: Icon(
                            Icons.favorite_outlined,
                            size: 25,
                            color: isselected ? Colors.red : Colors.white,
                          )),
                    ),
                  ),
                ],
              ),
              Text(
                '\$ ${widget.product.price.toString()}',
                style: TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontSize: 17,
                    fontWeight: FontWeight.w700),
              ),
            /*   IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: Padding(
                              padding: const EdgeInsets.only(bottom: 10.0),
                              child: Text(
                                'Do you yant to add this product to your cart?',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            actions: [
                              MaterialButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('Cancel',
                                    style: TextStyle(fontSize: 18)),
                              ),
                              MaterialButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  context
                                      .read<CartProvider>()
                                      .addTocart(widget.product);
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          backgroundColor:
                                              Color.fromARGB(255, 235, 159, 97),
                                          content: Text(
                                            'Added this item to your cart',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 17,
                                                fontWeight: FontWeight.w500),
                                          )));
                                },
                                child:
                                    Text('Yes', style: TextStyle(fontSize: 18)),
                              )
                            ],
                          ));
                },
                icon: Icon(
                  Icons.add,
                  color: Color.fromARGB(255, 0, 0, 0),
                  size: 20,
                ),
              ) */
            ],
          ),
        ),
      ),
    );
  }
}
