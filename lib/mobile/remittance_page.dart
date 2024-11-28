import 'package:flutter/material.dart';
import 'package:ligapay/widgets/custom_footer.dart';
import 'package:ligapay/widgets/hero_mobile.dart';

class MobileRemitancePage extends StatelessWidget {
  const MobileRemitancePage({super.key});

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
   backgroundImageUrl: "https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lr1.png",
          title: "Fast, Affordable, and \n Secure  International \n Transfers",
          subtitle: "LigaRemit makes sending money across \n borders easier than ever.  With competitive  \n exchange rates and lightning-fast transfers,\n you can send money to any bank,\n anywhere in the world.",
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