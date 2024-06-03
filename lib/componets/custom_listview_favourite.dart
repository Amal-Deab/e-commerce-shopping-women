import 'package:e_commerce_shopping/componets/custom_category_card.dart';
import 'package:e_commerce_shopping/componets/custom_favourite_card.dart';
import 'package:e_commerce_shopping/pages/detials_screen.dart';
import 'package:flutter/material.dart';

class CustomListViewFavourite extends StatefulWidget {
  final List Category_list;
  CustomListViewFavourite({super.key, required this.Category_list});

  @override
  State<CustomListViewFavourite> createState() =>
      _CustomListViewFavouriteState();
}

class _CustomListViewFavouriteState extends State<CustomListViewFavourite> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
       
        itemCount: widget.Category_list.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomFavouriteCard(
                productModel: widget.Category_list[index],
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DetailsPage(
                      productModel: widget.Category_list[index],
                    ),
                  ),
                ),
              ),
        ));
  }
}
