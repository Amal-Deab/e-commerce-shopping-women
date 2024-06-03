import 'package:e_commerce_shopping/pages/home_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/model.jpg',
              ),
              fit: BoxFit.cover)),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('Welcome to',style: TextStyle(color: Colors.white,fontSize: 20),),
             Text('Amal Clothing',style: TextStyle(color: Colors.white,fontSize: 23),),
             SizedBox(height: 20,),
              Text('Find your style and market yoursful',style: TextStyle(color: Colors.white,fontSize: 17),),
               Text('more confident',style: TextStyle(color: Colors.white,fontSize: 17),),
               SizedBox(height: 50,),
               Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
                 child: MaterialButton(onPressed: (){
                  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => HomeScreen(),), (route) => false);
                 },
                 child: Text('Get Started',style: TextStyle(fontSize: 18,fontWeight:FontWeight.w700 ),),

                 ),
               )
            ],
        ),
      ),
    ));
  }
}
