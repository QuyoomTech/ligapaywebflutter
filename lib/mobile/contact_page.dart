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
          backgroundImageUrl: "https://images.unsplash.com/photo-1504384308090-c894fdcc538d?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
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
