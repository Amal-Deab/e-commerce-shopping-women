import 'package:e_commerce_shopping/componets/card_gridview_product.dart';
import 'package:e_commerce_shopping/pages/detials_screen.dart';
import 'package:flutter/material.dart';

class SelectCategory extends StatefulWidget {
  final List selectbar;
  const SelectCategory({super.key, required this.selectbar});

  @override
  State<SelectCategory> createState() => _SelectCategoryState();
}

class _SelectCategoryState extends State<SelectCategory> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Stack(
              children: [
                CardProduct(
                    product: widget.selectbar[index],
                    onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => DetailsPage(
                              productModel: widget.selectbar[index],
                            ),
                          ),
                        ))
              ],
            );
          },
        ));
  }
}
