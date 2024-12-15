import 'package:flutter/material.dart';

import 'package:ligapay/widgets/waitinglist_ui_desktop.dart';

class Jobslist extends StatelessWidget {
  const Jobslist({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: IconButton(
      //     icon: const Icon(Icons.arrow_back),
      //     onPressed: () {
      //       // Handle button press here
      //       print("Button Pressed");

      //       // Navigate to the contact page using GoRouter
      //       context.go('/');
      //     },
      //   ),
      //   title: const Text(''),
      // ),
      body: const SingleChildScrollView(
       // padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const WaitingListUIDesktop(
          backgroundImageUrl: "https://raw.githubusercontent.com/QuyoomTech/ligapayassets/refs/heads/main/lc1.png",
          title: "Join the Ligapay Team",
          subtitle: "Send your resume on apply@ligapay.com",
         
        ),
          ],
        ),
      ),
    );
  }
}
