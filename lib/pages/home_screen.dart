import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:e_commerce_shopping/componets/custom_bar_categories.dart';
import 'package:e_commerce_shopping/componets/slider.dart';
import 'package:e_commerce_shopping/pages/cart_screen.dart';
import 'package:e_commerce_shopping/pages/categories_screen.dart';
import 'package:e_commerce_shopping/pages/favourite_screen.dart';
import 'package:e_commerce_shopping/provider/cart_provider.dart';
import 'package:e_commerce_shopping/provider/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:carousel_slider/carousel_slider.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List imageslider = [
    'assets/pageview.jpg',
    'assets/slider.jpg',
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    final dress = context.watch<ProductProvider>().dress;

    final pants = context.watch<ProductProvider>().pants;
    final t_shirts = context.watch<ProductProvider>().t_shirt;
    final bluzers = context.watch<ProductProvider>().bluzers;
    final cart = context.watch<CartProvider>().carts;
    return Scaffold(
      appBar: AppBar(
        title: Text('Amal',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10,left: 8),
            child: Row(
              children: [
              
                IconButton(
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder:  (context) => CartScreen(),));
                  },
                icon: Icon(Icons.shopping_cart_checkout) ,
                ),
                cart.isNotEmpty
                    ? Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 231, 183, 128)),
                        child: Center(
                            child: Text(
                          '${cart.length.toString()}',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        )))
                    : SizedBox(),
              ],
            ),
          )
        ],
      ),
      drawer: Drawer(
 
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 30),
          child: Column(
            children: [
              Text('your Favourite',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),),
             Expanded(child: FavouriteScreen()),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                  label: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: const Color.fromARGB(255, 134, 128, 128),
                      ),
                      Text('Search')
                    ],
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            CarouselSlider.builder(
              itemCount: imageslider.length,
              itemBuilder: (context, index, realIndex) =>
                  SliderImage(image: imageslider[index]),
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                height: 200,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
                onPageChanged: (index, reason) {
                  setState(() {
                    activeIndex = index;
                  });
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Categories',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                 InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => CategoriesScreen(),));
                  },
                    child: Text(
                                  'View all',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 226, 114, 9),
                                  //  decoration: TextDecoration.underline,
                                  ),
                                ),
                  )
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2.4,
              child: ContainedTabBarView(
                tabBarProperties: TabBarProperties(
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                        color:  Color.fromARGB(255, 226, 114, 9)),
                    unselectedLabelStyle:
                        TextStyle(fontSize: 15, color: Colors.black87),
                    indicatorColor:  Color.fromARGB(255, 226, 114, 9)),
                tabs: [
                  Text('Bluzer'),
                  Text('Dress'),

                  Text('T-Shirts'),
                  Text('Pants'),
                
                ],
                views: [
                  SelectCategory(selectbar: bluzers),
                  SelectCategory(selectbar: dress),
                  SelectCategory(selectbar: t_shirts),
                  SelectCategory(
                    selectbar: pants,
                  )
                ],
            
              ),
            ),
          ],
        ),
      ),
    );
  }
}
