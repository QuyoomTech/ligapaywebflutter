import 'package:flutter/material.dart';
import 'package:ligapay/widgets/contact%20_hero_mobile.dart';
import 'package:ligapay/widgets/custom_footer.dart';


// ignore: use_key_in_widget_constructors
class MobileContactPage extends StatelessWidget {
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
             const HeroContactMobile(
          backgroundImageUrl: "https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lb7.png",
          title: "Tomorrow can't wait. Get in touch today",
          subtitle: "Go borderless with LigaPay. Join Now",
         
        ),
              CustomFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
