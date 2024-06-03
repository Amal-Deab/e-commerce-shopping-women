import 'package:e_commerce_shopping/model/product_model.dart';
import 'package:e_commerce_shopping/provider/cart_provider.dart';
import 'package:e_commerce_shopping/provider/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class CustomFavouriteCard extends StatefulWidget {
  final ProductModel productModel;
  final void Function()? onTap;
  const CustomFavouriteCard({super.key, required this.productModel, this.onTap});

  @override
  State<CustomFavouriteCard> createState() => _CustomFavouriteCardState();
}

class _CustomFavouriteCardState extends State<CustomFavouriteCard> {
  @override
  Widget build(BuildContext context) {
  
    return InkWell(
       onTap: widget.onTap,
      child: Container(
        width: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(255, 153, 151, 151),
                  offset: Offset(5, 5),
                  spreadRadius: 3,
                  blurRadius: 5)
            ]),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Center(
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          widget.productModel.image,
                          width: 100,
                          fit: BoxFit.cover,
                          height: 100,
                        )),
                    IconButton(
                        onPressed: 
                            () {
                                context
                                    .read<ProductProvider>()
                                    .removefavourite(widget.productModel);
                              }
                           ,
                        icon: Icon(Icons.delete,
                            color:  Colors.white))
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$ ${widget.productModel.price}',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  IconButton(
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
                                      .addTocart(widget.productModel);
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
                        size: 25,
                        weight: 20,
                        color: Colors.black,
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
