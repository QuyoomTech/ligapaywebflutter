import 'package:flutter/material.dart';
import 'package:ligapay/widgets/custom_footer.dart';
import 'package:ligapay/widgets/custom_mobile_card3.dart';
import 'package:ligapay/widgets/hero_mobile.dart';

// ignore: use_key_in_widget_constructors
class MobileCareersPage extends StatelessWidget {

@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F3FF),
      body: DefaultTextStyle(
        style: const TextStyle(fontFamily: 'Utendo'),
        child: SingleChildScrollView(
          child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
               HeroMobile(
       backgroundImageUrl: "https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lc1.png",
          title: "Join us  as we improve \n financial wellness for millions",
          subtitle: "We are an innovative fintech company .\n  Here, you can break free of bureaucracy, discover your spark, \n and bring creative ideas to life",
          buttonText: "Join the waiting list",
        onButtonPressed: () {
          // Define what happens when the button is pressed
          Navigator.pushNamed(context, '/nextPage');
        },
      ),
  const SizedBox(height:18),
  CustomMobileCard3(
  title: 'Ready to join today?',
  description: 'Ligapay is a community of amazing people who change the face of the fintech world of tomorrow. Apply now!',
  buttonText: 'Apply now',
  imageUrl: 'https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lc2.png',
  onButtonPressed: () {
    print('Apply button clicked!');
  },
),
const SizedBox(height:18),
    CustomFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
