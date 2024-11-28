import 'package:flutter/material.dart';
import 'package:ligapay/widgets/custom_footer.dart';
import 'package:ligapay/widgets/hero_mobile.dart';
class MobileHomePage extends StatelessWidget {
  const MobileHomePage({super.key});
// Adjust the import path


       

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: DefaultTextStyle(
        style: const TextStyle(fontFamily: 'Utendo'),
        child: SingleChildScrollView(
          child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
               HeroMobile(
        backgroundImageUrl: 'https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/img1.png',
        title: 'Welcome to Ligapay',
        subtitle: 'Your All-in-One Financial Solution \n Don’t miss out—secure your spot now!',
        buttonText: 'Join the waiting list',
        onButtonPressed: () {
          // Define what happens when the button is pressed
          Navigator.pushNamed(context, '/nextPage');
        },
      ),
  
    
    CustomFooter(),
            ],
          ),
        ),
      ),
    );
  }
}