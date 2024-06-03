import 'package:e_commerce_shopping/pages/home_screen.dart';
import 'package:e_commerce_shopping/pages/welcometoapp.dart';
import 'package:e_commerce_shopping/provider/cart_provider.dart';
import 'package:e_commerce_shopping/provider/product_provider.dart';
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => ProductProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => CartProvider(),
      ),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
theme: ThemeData(
  fontFamily:     'PTSerif',
),
      home: WelcomeScreen(),
    );
  }
}
