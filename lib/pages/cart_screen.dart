import 'package:e_commerce_shopping/componets/card_order.dart';
import 'package:e_commerce_shopping/componets/option_tile.dart';
import 'package:e_commerce_shopping/provider/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => __CartScreenState();
}

class __CartScreenState extends State<CartScreen> {
  String _selectedOption = 'Standard (16 days)';
  int selectvalue = 0;


  @override
  Widget build(BuildContext context) {
    final carts = context.watch<CartProvider>().carts;
    final totalprice = context.watch<CartProvider>().getpriceTotal();
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: carts.isEmpty?Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('assets/cart.json',height: 200),
            Text('You dont have any order',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
            SizedBox(height: 10,),
            Text('Shop now',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600),)
          ],
        ),
      )
      
      
     : Padding(
        padding: const EdgeInsets.only(top: 20, left: 8, right: 8, bottom: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           
            Text(
              'Order',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: carts.length,
                itemBuilder: (context, index) => CardOrder(
                  productModel: carts[index].productModel ),
               
              ),
            ),
           SizedBox(height: 20,)  ,   
            Text(
              'Shipping Method',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            OptionTile(
              optionText: 'Standard (16 days)',
              price: 'Free',
              isSelected: _selectedOption == 'Standard (16 days)',
              onTap: () {
                setState(() {
                  _selectedOption = 'Standard (16 days)';
                  selectvalue = 0;
                });
              },
            ),
            OptionTile(
              optionText: 'Express (8 days)',
              price: '\$4',
              isSelected: _selectedOption == 'Express (8 days)',
              onTap: () {
                setState(() {
                  _selectedOption = 'Express (8 days)';
                  selectvalue = 4;
                });
              },
            ),
            OptionTile(
              optionText: 'Premium (1 day)',
              price: '\$8',
              isSelected: _selectedOption == 'Premium (1 day)',
              onTap: () {
                setState(() {
                  _selectedOption = 'Premium (1 day)';
                  selectvalue = 8;
                });
              },
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Sub Price',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                Text('\$ ${totalprice.toString()}',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700))
              ],
            ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Shipping ',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700)),
                Text('\$ ${selectvalue.toString()}',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700))
              ],
            ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Total Price',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700)),
                Text('\$ ${(totalprice+selectvalue).toString()}',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700))
              ],
            ),
            SizedBox(height: 10,),
        
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    // Handle submit order action here
                    print(selectvalue);
                  },
                  child: Text('Submit Order',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 18),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 224, 130, 86),
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 13),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
