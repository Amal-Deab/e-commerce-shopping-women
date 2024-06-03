import 'package:e_commerce_shopping/model/product_model.dart';
import 'package:e_commerce_shopping/provider/cart_provider.dart';
import 'package:e_commerce_shopping/provider/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CardFavourite extends StatefulWidget {
  final ProductModel product;
  final void Function()? onTap;
  const CardFavourite({super.key, required this.product, this.onTap});

  @override
  State<CardFavourite> createState() => _CardFavouriteState();
}

class _CardFavouriteState extends State<CardFavourite> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: InkWell(
        onTap: widget.onTap,
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(20)),
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.centerRight,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  widget.product.image,
                  width: 200,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                  right: 2,
                  top: 2,
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 219, 143, 80)),
                    child: Center(
                      child: IconButton(
                          onPressed: () {
                            context
                                .read<ProductProvider>()
                                .removefavourite(widget.product);
                          },
                          icon: Icon(
                            Icons.delete,
                            size: 20,
                            color: Colors.white,
                          )),
                    ),
                  )),
              Positioned(
                  bottom: 1,
                  right: 1,
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: IconButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  title: Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 10.0),
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
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                backgroundColor: Color.fromARGB(255, 235, 159, 97),
                                                content: Text(
                                                  'Added this item to your cart',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                )));
                                      },
                                      child: Text('Yes',
                                          style: TextStyle(fontSize: 18)),
                                    )
                                  ],
                                ));
                      },
                      icon: Icon(
                        Icons.add,
                        color: Color.fromARGB(255, 228, 111, 56),
                        size: 20,
                      ),
                    ),
                  )),
              Positioned(
                  left: 15,
                  bottom: 1,
                  child: Text(
                    '\$ ${widget.product.price.toString()}',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
