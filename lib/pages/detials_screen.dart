import 'dart:ui';
import 'package:e_commerce_shopping/model/product_model.dart';
import 'package:e_commerce_shopping/provider/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailsPage extends StatefulWidget {
  final ProductModel productModel;
  const DetailsPage({
    super.key,
    required this.productModel,
  });

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  Color selectcolor = Colors.pink;
  String selectsize = 'M';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 253, 250, 241),
      body: Container(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
           
                Stack(
                  children: [
                     Container(
                  color: const Color.fromARGB(255, 253, 253, 253),
                  width: MediaQuery.of(context).size.width,
                   height: MediaQuery.of(context).size.height 
                ),
              
                    Image.asset(
                      widget.productModel.image,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 1.7,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      left: 10,
                      top: 35,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    )
                  ],
                ),
               
          
            Positioned(
              top: MediaQuery.of(context).size.height / 1.9,
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    height: MediaQuery.of(context).size.height ,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(95, 117, 116, 116),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal:30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white54,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        'Price :',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w800),
                                      ),
                                      Text(
                                        '\$ ${widget.productModel.price.toString()} ',
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          'Color :',
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: 20,
                                          child: ListView.builder(
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            shrinkWrap: true,
                                            scrollDirection: Axis.horizontal,
                                            itemCount: widget.productModel
                                                .colors!.length,
                                            itemBuilder: (context, index) {
                                              Color color = widget.productModel
                                                  .colors![index];
                                              return InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    selectcolor = color;
                                                  });
                                                },
                                                child: Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 5),
                                                  child: Container(
                                                    width: 20,
                                                    height: 20,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: widget.productModel
                                                          .colors![index],
                                                      border: Border.all(
                                                        width: 3,
                                                        color: selectcolor ==
                                                                color
                                                            ? Colors.black45
                                                            : Colors
                                                                .transparent,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      
                                      children: [
                                        Text(
                                          'Size:',
                                          style: TextStyle(fontSize: 18),
                                        ),
                                        SizedBox(
                                          height: 20,
                                          child: ListView.builder(
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            shrinkWrap: true,
                                            scrollDirection: Axis.horizontal,
                                            itemCount: widget.productModel
                                                .size!.length,
                                            itemBuilder: (context, index) {
                                              String sizeitem = widget
                                                  .productModel.size![index];
                                              return InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    selectsize = sizeitem;
                                                  });
                                                },
                                                child: Container(
                                                  width: 25,
                                                  height: 25,
                                                  child: Center(
                                                    child: Text(
                                                      widget.productModel
                                                          .size![index],
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                      width: 2,
                                                      color: selectsize ==
                                                              sizeitem
                                                          ? Colors.black45
                                                          : Colors.transparent,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white38,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.productModel.name,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: Divider(
                                      color: Colors.blueGrey,
                                      height: 3,
                                    ),
                                  ),
                                  Text(
                                    '${widget.productModel.desc}.........\n..................................',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.blueGrey),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 231, 122, 33),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: MaterialButton(
                                onPressed: () {
                                  context
                                      .read<CartProvider>()
                                      .addTocart(widget.productModel);
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                   backgroundColor: Color.fromARGB(
                                                    255, 235, 159, 97),
                                                content: Text(
                                                  'Added this item to your cart',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                )));
                                },
                                child: Center(
                                  child: Text(
                                    ' \+  Add TO Cart',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}