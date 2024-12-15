import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ligapay/widgets/coming_soon_desktop.dart';

class ComingSoonPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
     
      body: SingleChildScrollView(
       // padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           ComingSoonDesktop(
        backgroundImageUrl: 'https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lb7.png', // Replace with your image URL
        title: 'Coming Soon', // Replace with your desired title
        subtitle: 'Stay tuned for something amazing!', // Replace with your subtitle
      ),
          ],
        ),
      ),
    );
  }
}
