import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ligapay/widgets/coming_soon_desktop.dart';

class ApplyDesktopPage extends StatelessWidget {
  const ApplyDesktopPage({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: const SingleChildScrollView(
       // padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           ComingSoonDesktop(
        backgroundImageUrl: 'https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/43983%20(1).jpg', // Replace with your image URL
        title: 'Joint the LigaPay team', // Replace with your desired title
        subtitle: 'Send your resume on apply@ligapay.com', // Replace with your subtitle
      ),
          ],
        ),
      ),
    );
  }
}
