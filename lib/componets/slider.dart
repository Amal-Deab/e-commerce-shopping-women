import 'package:flutter/material.dart';

class SliderImage extends StatefulWidget {
final  String image;
  const SliderImage({super.key,required this.image});

  @override
  State<SliderImage> createState() => _SliderImageState();
}

class _SliderImageState extends State<SliderImage> {
  @override
  Widget build(BuildContext context) {
    return  Stack(
        alignment: Alignment.bottomLeft,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                widget.image,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.8,
                fit: BoxFit.cover,
              )),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Discount',
                  style:
                      TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Up to 50% ',
                  style:
                      TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      )
   ;
  }
}
