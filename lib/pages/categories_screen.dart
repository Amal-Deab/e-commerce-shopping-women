import 'package:e_commerce_shopping/componets/category_gridview.dart';
import 'package:e_commerce_shopping/provider/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    final dress = context.watch<ProductProvider>().dress;

    final pants = context.watch<ProductProvider>().pants;
    final t_shirts = context.watch<ProductProvider>().t_shirt;
    final bluzers = context.watch<ProductProvider>().bluzers;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Categories',style: TextStyle(fontWeight: FontWeight.w700),),
          bottom: TabBar(
            indicatorColor: Color.fromARGB(255, 206, 77, 18),
               labelStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 206, 77, 18)),
                    unselectedLabelStyle:TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 145, 144, 144)), 
            tabs: [
              Tab(
                text: 'Bluzer',
              ),
              Tab(
                text: 'Dress',
              ),
              Tab(
                text: 'T-Shirts',
              ),
              Tab(
                text: 'Pants',
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: TabBarView(children: [
           CustomGridViewCategories(Category_list:bluzers,),
                  CustomGridViewCategories(Category_list:dress,),
                  CustomGridViewCategories(Category_list:t_shirts,),
                 CustomGridViewCategories(Category_list:pants,),
            ]),
          ),
        ),
      ),
    );
  }
}
