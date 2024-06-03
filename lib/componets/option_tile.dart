import 'package:flutter/material.dart';

class OptionTile extends StatelessWidget {
  final String optionText;
  final String price;
  final bool isSelected;
  final VoidCallback onTap;

  OptionTile({
    required this.optionText,
    required this.price,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 2),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isSelected ? Colors.pink[50] : Colors.white,
          border: Border.all(
            color: isSelected ? const Color.fromARGB(255, 236, 121, 13) : Colors.grey,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              optionText,
              style: TextStyle(
                fontSize: 17,
                color: isSelected ? const Color.fromARGB(255, 236, 121, 13) : Colors.black,
              ),
            ),
            Text(
              price,
              style: TextStyle(
                fontSize: 17,
                color: isSelected ? const Color.fromARGB(255, 236, 121, 13) : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}