import 'package:e_commerce_shopping/componets/custom_category_card.dart';
import 'package:e_commerce_shopping/pages/detials_screen.dart';
import 'package:flutter/material.dart';

class CustomGridViewCategories extends StatefulWidget {
  final List Category_list;
  CustomGridViewCategories({super.key, required this.Category_list});

  @override
  State<CustomGridViewCategories> createState() =>
      _CustomGridViewCategoriesState();
}

class _CustomGridViewCategoriesState extends State<CustomGridViewCategories> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 30,
            crossAxisCount: 2,
            mainAxisExtent: 250,
            mainAxisSpacing: 10),
        itemCount: widget.Category_list.length,
        itemBuilder: (context, index) => CustomCategorieCard(
              productModel: widget.Category_list[index],
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DetailsPage(
                    productModel: widget.Category_list[index],
                  ),
                ),
              ),
            ));
  }
}
