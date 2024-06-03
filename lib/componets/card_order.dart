
import 'package:e_commerce_shopping/model/product_model.dart';
import 'package:e_commerce_shopping/provider/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CardOrder extends StatefulWidget {
  final ProductModel productModel;
  const CardOrder({super.key, required this.productModel});

  @override
  State<CardOrder> createState() => _CardOrderState();
}

class _CardOrderState extends State<CardOrder> {
  @override
  Widget build(BuildContext context) {
    final cartProvider = context.watch<CartProvider>();
    final cartItem = cartProvider.getCartItem(widget.productModel.id);
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Container(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Image.asset(
            widget.productModel.image,
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height / 4.5,
            width: MediaQuery.of(context).size.width / 3,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              InkWell(
                  onTap: () {
                    context.read<CartProvider>().removeItem(widget.productModel.id);
                  },
                  child: Text(
                    'Delete',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  )),
              SizedBox(
                height: 4,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.7,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(95, 0, 0, 0),
                          blurRadius: 10,
                          spreadRadius: 8),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(8),
                        topRight: Radius.circular(8))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.productModel.name,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            '\$ ${widget.productModel.price.toString()}',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 236, 121, 13)),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        widget.productModel.desc,
                        style: TextStyle(color: Colors.black87),
                        maxLines: 1,
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                context.read<CartProvider>().descquanity(widget.productModel.id);
                              },
                              icon: Icon(Icons.remove_circle)),
                          Text(
                            'Qny:   ${cartItem?.quantity ?? 0}',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w700),
                          ),
                          IconButton(
                              onPressed: () {
                                context.read<CartProvider>().Incrementquanity(widget.productModel.id);
                              },
                              icon: Icon(Icons.add_circle)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}
