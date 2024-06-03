
import 'package:e_commerce_shopping/componets/custom_listview_favourite.dart';
import 'package:e_commerce_shopping/provider/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    final favouritelist =context.read<ProductProvider>().favouritelist;
    return 
      Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child:
           CustomListViewFavourite(Category_list:favouritelist,),
            
          
          ),
        );
   
  }
}

