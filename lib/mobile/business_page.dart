import 'dart:core';
import 'package:flutter/material.dart';
import 'package:ligapay/mobile/contact_page.dart';
import 'package:ligapay/widgets/custom_footer.dart';
import 'package:ligapay/widgets/hero_mobile.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileBusinessPage extends StatelessWidget {
  const MobileBusinessPage({super.key});

  void _launchURL(String url) async {
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

 
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
        backgroundImageUrl: "https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lb1.png",
          title: "Empower Your \n Business \n with LigaPay",
          subtitle: "Streamline your business transactions and \n take control of your finances with a \n smart, flexible payment platform that’s \n built to grow with you.",
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