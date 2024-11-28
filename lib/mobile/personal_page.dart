import 'package:flutter/material.dart';
import 'package:ligapay/widgets/custom_footer.dart';
import 'package:ligapay/widgets/hero_mobile.dart';

// ignore: use_key_in_widget_constructors
class MobilePersonalPage extends StatelessWidget {
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
        backgroundImageUrl: "https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lp1.png",
          title: " LigaPay \n Personal Account",
          subtitle: "With LigaPay, managing your personal \n finances is easier, smarter, and more secure.",
          buttonText: "Join the waiting list",
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