import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:ligapay/widgets/coming_soon_desktop.dart';

class ApplyMobilePage extends StatelessWidget {
  const  ApplyMobilePage({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
       appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Handle button press here
            print("Button Pressed");

            // Navigate to the contact page using GoRouter
            context.go('/');
          },
        ),
        title: const Text('Apply '),
      ),
      body: const SingleChildScrollView(
       // padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           ComingSoonDesktop(
        backgroundImageUrl: 'https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lb1.png', // Replace with your image URL
        title: 'Joint the LigaPay team', // Replace with your desired title
        subtitle: 'Send your resume on \n hr@LigaPay.com and career@LigaPay.com  ', // Replace with your subtitle
      ),
          ],
        ),
      ),
    );
  }
}
