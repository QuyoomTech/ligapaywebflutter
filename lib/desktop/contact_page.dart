import 'package:flutter/material.dart';

import 'package:ligapay/widgets/contact%20_hero_desktop.dart';

import 'package:ligapay/widgets/custom_footer.dart';

class DesktopContactPage extends StatelessWidget {
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
 const HeroContactDesktop(
          backgroundImageUrl: "https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lb7.png",
          title: "Tomorrow can't wait. Get in touch today",
          subtitle: "Go borderless with LigaPay. ",
         
        ),
      

              CustomFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
